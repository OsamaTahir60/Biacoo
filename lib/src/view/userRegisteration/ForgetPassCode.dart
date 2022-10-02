import 'dart:async';

import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/userRegisteration/NewPassword.dart';
import 'package:biacoo/src/view/userRegisteration/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class ForgetPasswordCodeScreen extends StatefulWidget {
  const ForgetPasswordCodeScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordCodeScreenState createState() => _ForgetPasswordCodeScreenState();
}

class _ForgetPasswordCodeScreenState extends State<ForgetPasswordCodeScreen> {
  TextEditingController verification = new TextEditingController();
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();

  GlobalKey<ScaffoldState> _scaffers = new GlobalKey<ScaffoldState>();
  bool hasError = false;
  String currentText = "";
  void verified() async{
    if(verification.text!='1234'){
      setState(() {
        hasError =true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Verification Code Not Match",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.red,)
      );
    }
    else{

      Navigator.of(context).pushReplacement(
        MaterialPageRoute( builder: (BuildContext context){
          return NewPasswordScreen();
        },),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      key: _scaffers,
      body: SafeArea(
          bottom: false,
          left: false,
          right: false,
          top: false,
          child: SingleChildScrollView(
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
                            child: Text('Verify your Email',
                              style: TextStyle(
                                fontSize: 2.8 * SizeConfig.textMultiplier!,
                                fontFamily: 'OpenSans_semibold',
                                color: Color(0xff6D6B6B),
                              ),textAlign: TextAlign.center,),
                          )
                      )
                  ),
                  SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: 55.0* SizeConfig.widthMultiplier!,
                          child: Padding(
                            padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                            child: Text('please enter 4 digit code sent to j*****45***e@****.com',
                              style: TextStyle(
                                fontSize: 2.1 * SizeConfig.textMultiplier!,
                                fontFamily: 'OpenSans-Regular',
                                fontWeight: FontWeight.w400,
                                color: Color(0xff1D1D1D),
                              ),textAlign: TextAlign.center,),
                          )
                      )
                  ),
                  SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 95),
                    child:  PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: true,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        selectedFillColor: Colors.transparent,
                        inactiveFillColor: Colors.transparent,
                        inactiveColor: Colors.blue,
                        activeColor: Colors.green,
                        activeFillColor:
                        hasError ? Colors.red : Colors.transparent,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      controller: verification,
                      textStyle: TextStyle(color: Colors.black,fontSize: 22.0),
                      keyboardType: TextInputType.number,
                      boxShadows: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.transparent,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        verified();
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        return true;
                      },
                    ),
                  ),
                  SizedBox(height: 14.0 *SizeConfig.heightMultiplier!,),
                  Align(
                      alignment: Alignment.topCenter,
                      child: InkWell(
                        onTap: (){
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute( builder: (BuildContext context){
                          //     return ForgetPasswordScreen();
                          //   },),
                          // );
                        },
                        child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                              child: Text('Resend code',
                                style: TextStyle(
                                  fontSize: 2.3 * SizeConfig.textMultiplier!,
                                  decoration:TextDecoration.underline,
                                  fontFamily: 'OpenSans-Regular',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff1D1D1D),
                                ),textAlign: TextAlign.center,),
                            )
                        ),
                      )
                  ),
                  SizedBox(height: 20.0 *SizeConfig.heightMultiplier!,),

                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return SignInScreen();
                              },),
                            );
                          },
                          child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                        ),
                      )
                  )
                ]
            ),
          )

      ),
    );
  }
}

