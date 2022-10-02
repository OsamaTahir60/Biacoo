import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class AddLocation extends StatefulWidget {
  const AddLocation({Key? key}) : super(key: key);

  @override
  _AddLocationState createState() => _AddLocationState();
}

class _AddLocationState extends State<AddLocation> {

  String country = 'Country';
  String state = 'State/Province';
  String city = 'Select City';
  String town = 'Select Town';
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
                  alignment: Alignment.center,
                  child: Text('Add your Location',style: TextStyle(
                      fontSize: 3.0 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w700,

                      color: Color(0xff6D6B6B)
                  ),),
                ),
                SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: DropdownButton<String>(
                          value: country,
                          isExpanded: true,
                          icon: ImageIcon(
                            AssetImage(Images.dropdownIcon),
                            color: Color(0xff000000),
                            size: 1.7 * SizeConfig.heightMultiplier!,
                          ),
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans"),
                          underline: Container(
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              country = newValue!;
                            });
                          },
                          items: <String>['Country','Pakistan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: DropdownButton<String>(
                          value: state,
                          isExpanded: true,
                          icon: ImageIcon(
                            AssetImage(Images.dropdownIcon),
                            color: Color(0xff000000),
                            size: 1.7 * SizeConfig.heightMultiplier!,
                          ),
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans"),
                          underline: Container(
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              state = newValue!;
                            });
                          },
                          items: <String>['State/Province','Federal Capital','Punjab','Sindh','Balochistan','Azad Kashmir','Federal Administered Tribal Areas','Gilgit Baltistan']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: DropdownButton<String>(
                          value: city,
                          isExpanded: true,
                          icon: ImageIcon(
                            AssetImage(Images.dropdownIcon),
                            color: Color(0xff000000),
                            size: 1.7 * SizeConfig.heightMultiplier!,
                          ),
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans"),
                          underline: Container(
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              city = newValue!;
                            });
                          },
                          items: <String>['Select City','Rawalpindi','Islamabad']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),

                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.5 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4,0.8],
                          colors: [Color(0xffC1272D),
                            Color(0xff651C69),
                            Color(0xff28225E),]
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(0.5* SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child:  Container(
                        //top:0.5*SizeConfig.heightMultiplier
                        padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white
                        ),
                        child: DropdownButton<String>(
                          value: town,
                          isExpanded: true,
                          icon: ImageIcon(
                            AssetImage(Images.dropdownIcon),
                            color: Color(0xff000000),
                            size: 1.7 * SizeConfig.heightMultiplier!,
                          ),
                          style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans"),
                          underline: Container(
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              town = newValue!;
                            });
                          },
                          items: <String>['Select Town','Rawalpindi','Islamabad']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 7.0 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                      ),
                    ),
                    child: TextButton(
                      child: Text('Proceed', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute( builder: (BuildContext context){
                            return HomeScreen();
                          },),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
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
}
