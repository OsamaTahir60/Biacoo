import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:path_provider/path_provider.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class UploadPrescription extends StatefulWidget {
  const UploadPrescription({Key? key}) : super(key: key);

  @override
  _UploadPrescriptionState createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {

  File? _imageFile;
  bool fileLoad = false;
  final _picker = ImagePicker();
  bool processing = false;
  void sendToBiaaco() async{
    var img = base64Encode(_imageFile!.readAsBytesSync());

    if(img!='')
    {
      Directory dir = await getApplicationDocumentsDirectory();
      final String path = dir.path;
      imageCache!.clear();
      await _imageFile!.copy('$path/image1.png');
      setState(() {
        processing = true;
      });
      // prefs.setString('image', img);
      // prefs.setString('imageLocation', '$path/image1.png');
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: true,
        right: true,
        top: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
              Padding(padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images.bHome,
                      width:7.0 * SizeConfig.imageSizeMultiplier!,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute( builder: (BuildContext context){
                                return ProfileDetailScreen();
                              },),
                            );
                          },
                          child: Container(

                              padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                              width: 12*SizeConfig.widthMultiplier!,
                              height: 4.5*SizeConfig.heightMultiplier!,
                              decoration: BoxDecoration(
                                  color:Colors.grey,
                                  shape: BoxShape.circle
                              ),

                              child:Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                                    backgroundColor: Colors.red,
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child:  Container(
                                        padding: EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white
                                        ),
                                        child: Icon(Icons.edit,
                                          color: Colors.black,
                                          size: 10.0,),
                                      ))
                                ],
                              )
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute( builder: (BuildContext context){
                                return VerifyOrder();
                              },),
                            );
                          },
                          child: Container(

                            padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                            width: 12*SizeConfig.widthMultiplier!,
                            height: 4.5*SizeConfig.heightMultiplier!,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1,color: Colors.grey),
                                // color:Colors.white,
                                shape: BoxShape.circle
                            ),

                            child:CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Colors.transparent,
                              child: Icon(Icons.shopping_cart,color: Colors.grey,),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                    ),
                  )
              ),
              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  height: 60.0 * SizeConfig.heightMultiplier!,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child:Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.rectangle),
                      width: double.infinity,
                      height: 60*SizeConfig.heightMultiplier!,
                      child: showImage(),
                    ),
                  ),
                ),
              ),
              buttons(),
            ],
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
  Future<void> _takeImageFromCamera() async {
    final PickedFile? pickedFile = await _picker.getImage(source: ImageSource.camera);
    setState(() => this._imageFile = File(pickedFile!.path));

    Timer(Duration(seconds: 2),(){
      setState(() { fileLoad = false; });
    });
  }

  Widget buttons(){
    if(_imageFile != null){
      return Column(
        children: [
          SizedBox(height: 2.5 * SizeConfig.heightMultiplier!,),
          Align(
            child: Container(
              width: 60.0 * SizeConfig.widthMultiplier!,
              height: 7.0 * SizeConfig.heightMultiplier!,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: [0.01, 0.4],
                    colors: [Colors.red, Color(0xff651C69)]
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(0.5 * SizeConfig.heightMultiplier!),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                child:  Container(
                  //top:0.5*SizeConfig.heightMultiplier
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      color: Colors.white
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Icon(Icons.arrow_back_outlined ,size: 8*SizeConfig.imageSizeMultiplier!,color: Colors.black,),
                        ),
                        Text('GO BACK',style: TextStyle(
                            color: Color(0xff484848),
                            fontSize: 4*SizeConfig.textMultiplier!,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400
                        ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute( builder: (BuildContext context){
                          return UploadPrescription();
                        },),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 4.0 *SizeConfig.heightMultiplier!,),
          processing==true ? CircularProgressIndicator(): Align(
            child: Container(
              width: 60.0 * SizeConfig.widthMultiplier!,
              height: 7.0 * SizeConfig.heightMultiplier!,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    stops: [0.01, 0.4],
                    colors: [Colors.red, Color(0xff651C69)]
                ),
              ),

              child: Container(
                margin: EdgeInsets.all(0.5 * SizeConfig.heightMultiplier!),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text('SAVE & SEND',style: TextStyle(
                            color: Colors.white,
                            fontSize: 3*SizeConfig.textMultiplier!,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400
                        ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.arrow_forward_outlined ,size: 8*SizeConfig.imageSizeMultiplier!,color: Colors.white,),
                      ),
                    ],
                  ),
                  onPressed: () {
                    // sendToBiaaco();
                  },
                ),
              ),
            ),
          ),
        ],
      );
    }
    else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SizedBox(height: 2.5* SizeConfig.heightMultiplier!,),
              Align(
                child: Container(
                  width:20.0 * SizeConfig.widthMultiplier!,
                  height: 7.0 * SizeConfig.heightMultiplier!,
                  margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.01, 0.6],
                        colors: [Colors.red,Color(0xff651C69)]
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.edit_outlined ,color: Colors.white,size: 8*SizeConfig.imageSizeMultiplier!,),
                    onPressed: (){
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return AddMedicine();
                      //   },),
                      // );
                    },),

                ),
              ),
              Text('MANUAL', style: TextStyle(fontSize: 2.5 * SizeConfig.textMultiplier!,fontFamily: "Roboto",color:Color(0xff6D6B6B),fontWeight: FontWeight.w400),),
              Text('INPUT', style: TextStyle(fontSize: 2.5 * SizeConfig.textMultiplier!,fontFamily: "Roboto",color:Color(0xff6D6B6B),fontWeight: FontWeight.w400),),
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width:20.0 * SizeConfig.widthMultiplier!,
                  height: 7.0 * SizeConfig.heightMultiplier!,
                  margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        stops: [0.01, 0.6],
                        colors: [Colors.red,Color(0xff651C69)]
                    ),
                    shape: BoxShape.circle,
                  ),

                  child: IconButton(
                    icon: Icon(Icons.image_rounded ,color: Colors.white,size: 8*SizeConfig.imageSizeMultiplier!,),
                    onPressed: () {
                      _pickImageFromGallery();
                    },
                  ),

                ),
              ),
              Text('GALLERY', style: TextStyle(fontSize: 2.5 * SizeConfig.textMultiplier!,fontFamily: "Roboto",color:Color(0xff6D6B6B),fontWeight: FontWeight.w400),),
            ],
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width:20.0 * SizeConfig.widthMultiplier!,
                  height: 7.0 * SizeConfig.heightMultiplier!,
                  margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier!),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        stops: [0.01, 0.6],
                        colors: [Colors.red,Color(0xff651C69)]
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt ,color: Colors.white,size: 8*SizeConfig.imageSizeMultiplier!,),
                    onPressed: (){
                      _takeImageFromCamera();
                    },
                  ),
                ),
              ),
              Text('CAMERA', style: TextStyle(fontSize: 2.5 * SizeConfig.textMultiplier!,fontFamily: "Roboto",color:Color(0xff6D6B6B),fontWeight: FontWeight.w400),),
            ],
          ),
        ],
      );
    }
  }

  Widget showImage() {
    if(_imageFile != null){
      return fileLoad == true? Container( padding:EdgeInsets.only(top:75.0,bottom: 75.0,left: 60.0,right: 60.0),
        child: CircularProgressIndicator(),): Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image:  FileImage(_imageFile!,
              )
          ),
          shape: BoxShape.rectangle,
        ),
      );
    }
    else{
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.file_present,
            size: 25.0 * SizeConfig.imageSizeMultiplier!,
            color: Colors.grey[800],
          ),
          Container(
            child: Text('UPLOAD',style: TextStyle(
                fontSize: 2.7 * SizeConfig.textMultiplier!,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Color(0xff4B4B4B)
            ),),
          ),
          Container(
            child: Text('PERSCRIPTION',style: TextStyle(
                fontSize: 2.7 * SizeConfig.textMultiplier!,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Color(0xff4B4B4B)
            ),),
          )
        ],
      );
    }
  }
}
