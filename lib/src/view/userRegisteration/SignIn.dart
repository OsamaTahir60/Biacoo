import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/HomeScreen.dart';
import 'package:biacoo/src/view/userRegisteration/ForgetPassword.dart';
import 'package:biacoo/src/view/userRegisteration/SignupStep1.dart';
import 'package:biacoo/src/view/userRegisteration/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:io';

TextEditingController name = new TextEditingController();
TextEditingController pass = new TextEditingController();

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: false,
        child: signContent(),

      ),
    );
  }
  Widget signContent()
  {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
            Padding(
              padding: EdgeInsets.all(3.0*SizeConfig.heightMultiplier!),
              child:  Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  Images.biacooLogoColor,
                  alignment: Alignment.center,
                  semanticsLabel: 'BIAACO Logo',
                  height: 35.0 * SizeConfig.imageSizeMultiplier!,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('Sign In with',
                        style: TextStyle(
                          fontSize: 2.8 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            SizedBox(height: 3.0 *SizeConfig.heightMultiplier!,),
            socialLogin()!,
            SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Divider(height:35.0,color: Color(0xff707070),indent: 65.0,endIndent: 65.0,thickness: 2.0,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      color: Colors.white,
                      child: Text("or",
                        style: TextStyle(
                          fontSize: 2.8 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
            Form(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 75.0 * SizeConfig.widthMultiplier!,
                      height: 7.5 * SizeConfig.heightMultiplier!,
                      margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Phone or Email',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            controller: name,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 75.0 * SizeConfig.widthMultiplier!,
                      height: 7.5 * SizeConfig.heightMultiplier!,
                      margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            controller: pass,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                  Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return ForgetPasswordScreen();
                            },),
                          );
                        },
                        child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                              child: Text('Forgot your password?',
                                style: TextStyle(
                                  fontSize: 2.3 * SizeConfig.textMultiplier!,
                                  fontFamily: 'OpenSans-Regular',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1D1D1D),
                                ),textAlign: TextAlign.center,),
                            )
                        ),
                      )
                  ),
                  SizedBox(height: 3.0 *SizeConfig.heightMultiplier!,),
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
                        child: Text('SIGN IN', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return HomeScreen();
                            },),
                          );
                        },
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(2*SizeConfig.heightMultiplier!),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return WelcomeScreen();
                            },),
                          );
                        },
                        child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                      ),
                    )
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("Don't have an account?",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 20.0 * SizeConfig.widthMultiplier!,
                    height: 4.0 * SizeConfig.heightMultiplier!,
                    margin: EdgeInsets.only(top:1.0 * SizeConfig.heightMultiplier! ,bottom: 1.0*SizeConfig.heightMultiplier!),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [Color(0xffC1272D), Color(0xffC1272D), Color(0xff7D1A6D), Color(0xff28225E)]
                      ),
                    ),
                    child: TextButton(
                      child: Text('SIGN UP', style: TextStyle(fontSize: 1.6 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return SignupStep1();
                          },),
                        );
                      },
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(2*SizeConfig.heightMultiplier!),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute( builder: (BuildContext context){
                              return SignupStep1();
                            },),
                          );
                        },
                        child:  Icon(Icons.arrow_forward ,size: 8*SizeConfig.imageSizeMultiplier!, color: Colors.black,),
                      ),
                    )
                ),
              ],
            ),
          ]
      ),
    );
  }
  Widget? socialLogin()
  {
    if (Platform.isAndroid) {
      return Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    // connectOnline();
                  },
                  child: Image.asset(
                    Images.fbIcon,
                    width:13.0 * SizeConfig.imageSizeMultiplier!,

                  ),
                ),
                SizedBox(width: 1.0 *SizeConfig.heightMultiplier!,),

                // InkWell(
                //   onTap: (){
                //     // connectOnline();
                //   },
                //   child: Image.asset(
                //     Images.twIcon,
                //     width:13.0 * SizeConfig.imageSizeMultiplier!,
                //
                //   ),
                // ),
                // SizedBox(width: 1.0 *SizeConfig.heightMultiplier!,),

                InkWell(
                  onTap: (){
                    // connectOnline();
                  },
                  child: Image.asset(
                    Images.googleIcon,
                    width:13.0 * SizeConfig.imageSizeMultiplier!,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.8 *SizeConfig.heightMultiplier!,),
        ],
      );
    } else if (Platform.isIOS) {
      return Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    // connectOnline();
                  },
                  child: Image.asset(
                    Images.fbIcon,
                    width:13.0 * SizeConfig.imageSizeMultiplier!,

                  ),
                ),
                SizedBox(width: 1.0 *SizeConfig.heightMultiplier!,),

                InkWell(
                  onTap: (){
                    // connectOnline();
                  },
                  child: Image.asset(
                    Images.twIcon,
                    width:13.0 * SizeConfig.imageSizeMultiplier!,

                  ),
                ),
                SizedBox(width: 1.0 *SizeConfig.heightMultiplier!,),

                InkWell(
                  onTap: (){
                    // connectOnline();
                  },
                  child: Image.asset(
                    Images.googleIcon,
                    width:13.0 * SizeConfig.imageSizeMultiplier!,

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.8 *SizeConfig.heightMultiplier!,),
          Align(
            alignment: Alignment.center,
            child:  InkWell(
              onTap: (){
                // connectOnline();
              },
              child: Image.asset(
                Images.appleIcon,
                width:50.0 * SizeConfig.imageSizeMultiplier!,

              ),
            ),
          ),
        ],
      );
    }
  }
}
