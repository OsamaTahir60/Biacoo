import 'dart:async';
import 'dart:convert';

import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/AddLocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
class UploadProfileImage extends StatefulWidget {
  const UploadProfileImage({Key? key}) : super(key: key);

  @override
  _UploadProfileImageState createState() => _UploadProfileImageState();
}

class _UploadProfileImageState extends State<UploadProfileImage> {
  File? _imageFile;
  bool fileLoad = false;
  final _picker = ImagePicker();

  void saveImage() async{

    var img = base64Encode(_imageFile!.readAsBytesSync());

    if(img!='')
    {
      Directory dir = await getApplicationDocumentsDirectory();
      final String path = dir.path;
      imageCache!.clear();
      await _imageFile!.copy('$path/image1.png');
      Navigator.of(context).pushReplacement(
        MaterialPageRoute( builder: (BuildContext context){
          return AddLocation();
        },),
      );
      // prefs.setString('image', img);
      // prefs.setString('imageLocation', '$path/image1.png');
    }


  }

  @override
  void initState() {
    super.initState();
    // checkUploaded();
  }

  // void checkUploaded() async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   if(prefs.getString('imageLocation')!=null)
  //   {
  //     print(prefs.getString('image'));
  //     setState(() {
  //       _imageFile = File(prefs.getString('imageLocation')!);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: true,
        right: true,
        top: false,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 7.0 * SizeConfig.heightMultiplier!,),
                Padding(
                  padding: EdgeInsets.all(3.0*SizeConfig.heightMultiplier!),
                  child:  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      Images.biacooLogoColor,
                      alignment: Alignment.center,
                      semanticsLabel: 'BIAACO Logo',
                      height: 40.0 * SizeConfig.imageSizeMultiplier!,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 40.0 * SizeConfig.widthMultiplier!,
                    height: 22.0 * SizeConfig.heightMultiplier!,
                    child: InkWell(
                      onTap: () async {
                        setState(() {
                          fileLoad = true;
                        });
                        _pickImageFromGallery();
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              shape: BoxShape.circle),
                          width: 40 * SizeConfig.widthMultiplier!,
                          height: 40 * SizeConfig.heightMultiplier!,
                          child: showImage(),
                        ),
                      ),
                    ),
                  ),
                ),
                buttons(),
                SizedBox(height: 10.0 * SizeConfig.heightMultiplier!,),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                      child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                      ),
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
  Future<void> _pickImageFromGallery() async {
    final PickedFile? pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() => this._imageFile = File(pickedFile!.path));
    Timer(Duration(seconds: 2),(){
      setState(() {
        fileLoad = false;
      });
    }
    );
  }

  Widget buttons(){
    if(_imageFile != null){
      return Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            //margin: EdgeInsets.all(25),
            child: TextButton(
                child: Text('Change', style: TextStyle(
                    fontSize: 3.5 * SizeConfig.textMultiplier!,
                    fontFamily: "OpenSans_semibold",
                    fontWeight: FontWeight.w800,

                    color: Color(0xff681C6A)),),
                onPressed: () async{
                  setState(() {
                    fileLoad = true;
                  });
                  _pickImageFromGallery();
                }
            ),
          ),
          SizedBox(height: 4.0 *SizeConfig.heightMultiplier!,),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 7*SizeConfig.heightMultiplier!,
              width:60.0 * SizeConfig.widthMultiplier!,
              margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: [0.01, 0.4],
                    colors: [Colors.red, Color(0xff651C69)]
                ),
              ),
              child: TextButton(
                child: Text('Done', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontFamily: "Roboto",fontWeight: FontWeight.w400,color: Colors.white),),
                onPressed: () {
                  saveImage();
                },
              ),
            ),
          ),
        ],
      );
    }
    else{
      return Column(
        children: [
          SizedBox(height: 4.0 *SizeConfig.heightMultiplier!,),
          Align(
            alignment: Alignment.topCenter,
            //margin: EdgeInsets.all(25),
            child: TextButton(
                child: Text('Upload', style: TextStyle(
                    fontSize: 3.5 * SizeConfig.textMultiplier!,
                    fontFamily: "OpenSans_semibold",
                    fontWeight: FontWeight.w800,
                    color: Color(0xff681C6A)),),
                // onPressed: () async =>_pickImageFromGallery(),
                onPressed: () async{
                  setState(() {
                    fileLoad = true;
                  });
                  _pickImageFromGallery();
                }
            ),
          ),
          SizedBox(height: 4.0 *SizeConfig.heightMultiplier!,),
          Align(
            alignment: Alignment.center,
            child: Text('Lets put a face to your name',style: TextStyle(
                fontSize: 2.0 * SizeConfig.textMultiplier!,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w400,

                color: Color(0xff681C6A)
            ),),
          ),
          Align(
            alignment: Alignment.center,
            child: Text('Add your profile picture',style: TextStyle(
                fontSize: 2.0 * SizeConfig.textMultiplier!,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w400,

                color: Color(0xff6D6B6B)
            ),),
          ),
        ],
      );
    }
  }

  Widget showImage()
  {
    if(_imageFile != null){
      return fileLoad == true? Container( padding:EdgeInsets.only(top:75.0,bottom: 75.0,left: 70.0,right: 70.0),
        child: CircularProgressIndicator(),): Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image:  FileImage(_imageFile!),
          ),
          shape: BoxShape.circle,

        ),
      );
    }
    else{
      return Icon(
        Icons.person,
        size: 25.0 * SizeConfig.imageSizeMultiplier!,
        color: Colors.grey[800],
      );
    }
  }
}
