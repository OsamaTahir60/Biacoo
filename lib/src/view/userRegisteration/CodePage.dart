import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/HomeScreen.dart';
import 'package:biacoo/src/view/userRegisteration/SignupStep2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  TextEditingController verification = new TextEditingController();
  StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();

  GlobalKey<ScaffoldState> _scaffers = new GlobalKey<ScaffoldState>();
  bool hasError = false;
  String currentText = "";
  void verified() async{
    if(verification.text!='123456'){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Verification Code Not Match",style: TextStyle(color: Colors.black),),
            backgroundColor: Colors.white,)
      );
    }
    else{
      Navigator.of(context).pushReplacement(
        MaterialPageRoute( builder: (BuildContext context){
          return HomeScreen();
        },),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        key: _scaffers,
          top: false,
          bottom: false,
          left: false,
          right: false,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.4,0.8],
                colors: [
                  Color(0xffC1272D),
                  Color(0xff651C69),
                  Color(0xff28225E),
                ],
              ),
            ),
           child: Column(
           children: <Widget>[
             Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.center,
                child: codeContentWidget(),
              ),
          )
        ],
      ),

          ),
      ),
    );
  }
  Widget codeContentWidget() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(6.5 * SizeConfig.heightMultiplier!),
                child: Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    Images.biacooLogoWhite,
                    semanticsLabel: 'BIAACO Logo',
                    height: 35.0 * SizeConfig.imageSizeMultiplier!,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 50*SizeConfig.widthMultiplier!,
                    child: Text("Please enter the Verification code ",
                      style: TextStyle(
                          fontSize: 2.3 * SizeConfig.textMultiplier!,
                          color: Colors.white,
                          fontFamily: "OpenSans_semibold"
                      ),textAlign: TextAlign.center,),
                  ),
                  SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 45),
                    child:  PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 6,
                      obscureText: true,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        selectedFillColor: Colors.transparent,
                        inactiveFillColor: Colors.transparent,
                        inactiveColor: Colors.white,
                        activeColor: Colors.green,
                        activeFillColor:
                        hasError ? Colors.transparent : Colors.transparent,
                      ),
                      cursorColor: Colors.white,
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      controller: verification,
                      textStyle: TextStyle(color: Colors.white,fontSize: 22.0),
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
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.all(2*SizeConfig.heightMultiplier!),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return SignupStep2();
                          },),
                        );
                      },
                      child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!, color: Colors.white,),
                    ),
                  )
              ),
              SizedBox(width: 7*SizeConfig.heightMultiplier!,),
              Align(
                alignment: Alignment.topCenter,
                child: Text("*Carrier SMS charges may apply",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    errorController.close();
  }
}
