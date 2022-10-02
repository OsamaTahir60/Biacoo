import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/SelectSpecialist.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class ConsultDoctor extends StatefulWidget {
  const ConsultDoctor({Key? key}) : super(key: key);

  @override
  _ConsultDoctorState createState() => _ConsultDoctorState();
}

class _ConsultDoctorState extends State<ConsultDoctor> {
  String services = 'Services';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: true,
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Select Service",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                        )
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: InkWell(
                            onTap: (){
                              // Navigator.of(context).pushReplacement(
                              //   MaterialPageRoute( builder: (BuildContext context){
                              //     return WelcomeScreen();
                              //   },),
                              // );
                            },
                            child:  Icon(Icons.arrow_back ,size: 7*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                          ),
                        )
                    ),


                  ],
                ),
                SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
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
                          value: services,
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
                              services = newValue!;
                            });
                          },
                          items: <String>['Services','Connect Online', 'Book an Appointment']
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
                SizedBox(height: 10.0 *SizeConfig.heightMultiplier!,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 75.0 * SizeConfig.widthMultiplier!,
                    height: 6.0 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                      ),
                    ),
                    child: TextButton(
                      child: Text('Next', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return SelectSpecialist();
                          },),
                        );
                      },
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
