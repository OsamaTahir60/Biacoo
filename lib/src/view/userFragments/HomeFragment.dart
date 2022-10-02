import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ConsultDoctor.dart';
import 'package:biacoo/src/view/HomeCallWaitScreen.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/lab/LabMainScreen.dart';
import 'package:biacoo/src/view/pharmacy/PharmacyMainScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../EditProfileScreen.dart';
class HomeFragment extends StatefulWidget {
  const HomeFragment({Key? key}) : super(key: key);

  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: true,
          left: false,
          right: false,
          top: false,
          child:Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.4,0.8],
              colors: [
                Color(0xffC1272D),
                Color(0xff651C69),
                Color(0xff28225E),
              ],),),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute( builder: (BuildContext context){
                          //     return ProfileDetailScreen();
                          //   },),
                          // );

                        },
                        child: Container(

                            padding: EdgeInsets.all(0.2*SizeConfig.heightMultiplier!),

                            width: 12*SizeConfig.widthMultiplier!,
                            height: 4.5*SizeConfig.heightMultiplier!,
                            decoration: BoxDecoration(
                              color:Colors.white,
                                shape: BoxShape.circle
                            ),

                            child:Padding(
                              padding:EdgeInsets.all(2),
                              child:ImageIcon(
                                AssetImage(Images.cancerIcon),
                                color: Color(0xfff06886),
                        ),
                            )
                        ),
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
                                   color:Colors.white,
                                    shape: BoxShape.circle
                                ),

                                child:Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage:NetworkImage('https://png.pngtree.com/png-clipart/20190924/original/pngtree-businessman-user-avatar-free-vector-png-image_4827807.jpg'),
                                      backgroundColor: Colors.white,
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
                                  border: Border.all(width: 1,color: Colors.white),
                                  // color:Colors.white,
                                    shape: BoxShape.circle
                                ),

                                child:CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  child: Icon(Icons.shopping_cart,color: Colors.white,),
                                ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                  Images.biacooLogoWhite,
                  semanticsLabel: 'BIAACO Logo',
                  height: 28.0 * SizeConfig.imageSizeMultiplier!,
                  fit: BoxFit.fitWidth,
                ),
                ),
                SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
                Container(
                  height: 30.0 * SizeConfig.heightMultiplier!,
                  child: Stack(
                    children: [
                      Positioned(
                        child:Container(
                            height: 25.0 * SizeConfig.heightMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white, //                   <--- border color
                                width: 4.0,
                              ),
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier!),
                              child:  Container(
                                height: 20.0 * SizeConfig.heightMultiplier!,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Connect',style: TextStyle(
                                            fontSize: 2.9 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700
                                        ),
                                        ),
                                        Text('Online',style: TextStyle(
                                            fontSize: 2.9 * SizeConfig.textMultiplier!,
                                            fontFamily: 'OpenSans',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700
                                        ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 10.0 * SizeConfig.heightMultiplier!,
                          decoration:  BoxDecoration(
                            border: Border.all(
                              color: Colors.white, //                   <--- border color
                              width: 2.0,
                            ),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                stops: [0.02, 0.8],
                                colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                            ),

                            shape: BoxShape.circle,
                          ),
                          child:InkWell(
                            onTap: (){
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute( builder: (BuildContext context){
                                  return HomeCallWaitScreen();
                                },),
                              );
                            },
                            child: ImageIcon(
                              AssetImage(Images.phone),
                              color: Color(0xffffffff),
                              size: 10 * SizeConfig.heightMultiplier!,),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.0 * SizeConfig.heightMultiplier!,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child:Image.asset(
                        Images.homeMicIcon,
                        width:11.0 * SizeConfig.imageSizeMultiplier!,

                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 60.0 * SizeConfig.widthMultiplier!,
                        height: 5.5 * SizeConfig.heightMultiplier!,
                        margin: EdgeInsets.only(top:0 * SizeConfig.heightMultiplier! ),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Container(
                          //top:0.5*SizeConfig.heightMultiplier
                          padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              color: Colors.white
                          ),
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.1*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Send your message ',
                              hintStyle: TextStyle(fontSize: 2.1*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans",fontStyle:FontStyle.normal),
                            ),
                            keyboardType: TextInputType.text,
                            // controller: pass,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                      child: Image.asset(
                        Images.homeSendIcon,
                        width:11.0 * SizeConfig.imageSizeMultiplier!,

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0 * SizeConfig.heightMultiplier!,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute( builder: (BuildContext context){
                            return ConsultDoctor();
                          },),
                        );
                      },
                      child:Container(
                          height: 12.0 * SizeConfig.heightMultiplier!,
                          width: 30.0 * SizeConfig.widthMultiplier!,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color:Color(0xff569027),width: 2.0),
                            // gradient: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.topRight,
                            //     stops: [0.02, 0.8],
                            //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                            // ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                            child:  Center(
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 5 * SizeConfig.heightMultiplier!,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:ExactAssetImage(Images.docIcon),
                                        ),
                                      ),
                                    ),
                                    Text('Consult Doctor',style: TextStyle(
                                        fontSize: 1.5 * SizeConfig.textMultiplier!,
                                        fontFamily: 'OpenSans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                    ),
                                  ],
                                )
                            ),
                          )
                      ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute( builder: (BuildContext context){
                            return PharmacyMainScreen();
                          },),
                        );
                      },
                      child: Container(
                          height: 12.0 * SizeConfig.heightMultiplier!,
                          width: 30.0 * SizeConfig.widthMultiplier!,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            border: Border.all(color:Color(0xff569027),width: 2.0),
                            // gradient: LinearGradient(
                            //     begin: Alignment.topLeft,
                            //     end: Alignment.topRight,
                            //     stops: [0.02, 0.8],
                            //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                            // ),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                            child:  Center(
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 5 * SizeConfig.heightMultiplier!,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:ExactAssetImage(Images.capIcon),
                                        ),
                                      ),
                                    ),
                                    Text('Pharmacy',style: TextStyle(
                                        fontSize: 1.5 * SizeConfig.textMultiplier!,
                                        fontFamily: 'OpenSans',
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                    ),
                                  ],
                                )
                            ),
                          )
                      ),
                    ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return LabMainScreen();
                        },),
                      );
                    },
                    child:Container(
                        height: 12.0 * SizeConfig.heightMultiplier!,
                        width: 30.0 * SizeConfig.widthMultiplier!,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color:Color(0xff569027),width: 2.0),
                          // gradient: LinearGradient(
                          //     begin: Alignment.topLeft,
                          //     end: Alignment.topRight,
                          //     stops: [0.02, 0.8],
                          //     colors: [Color(0xff2b6026), Color(0xff3d8f38)]
                          // ),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.4 * SizeConfig.heightMultiplier!),
                          child:  Center(
                              child:Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 5 * SizeConfig.heightMultiplier!,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:ExactAssetImage(Images.injectionIcon),
                                      ),
                                    ),
                                  ),
                                  Text('Diagnostics',style: TextStyle(
                                      fontSize: 1.5 * SizeConfig.textMultiplier!,
                                      fontFamily: 'OpenSans',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600
                                  ),
                                  ),
                                ],
                              )
                          ),
                        )
                    ),
                  ),

                  ],
                )

              ],
            ),
          )
      )
    );
  }
}
