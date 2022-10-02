import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/userRegisteration/CodePage.dart';
import 'package:biacoo/src/view/userRegisteration/SignupStep1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupStep2 extends StatefulWidget {
  const SignupStep2({Key? key}) : super(key: key);

  @override
  _SignupStep2State createState() => _SignupStep2State();
}

class _SignupStep2State extends State<SignupStep2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: false,
        child: step2(),
      ),

    );
  }
  Widget step2()
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                    child: Text('Verification',
                      style: TextStyle(
                        fontSize: 2.8 * SizeConfig.textMultiplier!,
                        fontFamily: 'OpenSans_semibold',
                        color: Color(0xff6D6B6B),
                      ),textAlign: TextAlign.center,),
                  )
              )
          ),
          Align(
              alignment: Alignment.topCenter,
              child: FittedBox(
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.0 * SizeConfig.heightMultiplier!),
                    child: Text('Step 2 of 2',
                      style: TextStyle(
                        fontSize: 2.2 * SizeConfig.textMultiplier!,
                        fontFamily: 'OpenSans_semibold',
                        color: Color(0xff382161),
                      ),textAlign: TextAlign.center,),
                  )
              )
          ),
          SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 30*SizeConfig.heightMultiplier!,
                child: Padding(
                  padding: EdgeInsets.only(top: 1.0 * SizeConfig.heightMultiplier!),
                  child: Text('How would you like us to verify your details?',
                    style: TextStyle(
                      fontSize: 2.2 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans_semibold',
                      color: Color(0xff1D1D1D),
                    ),textAlign: TextAlign.center,),
                )
              )
          ),
          SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    child: IconButton(
                      icon: Image.asset(Images.smsIcon),
                      iconSize: 25.0 * SizeConfig.imageSizeMultiplier!,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return CodePage();
                          },),
                        );
                      },
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: FittedBox(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),
                            child: Text('SEND SMS',
                              style: TextStyle(
                                  fontSize: 2.4 * SizeConfig.textMultiplier!,
                                  fontFamily: 'OpenSans',
                                  color: Color(0xff7E7E7E),
                                  fontWeight: FontWeight.w700
                              ),textAlign: TextAlign.center,),
                          )
                      )
                  ),
                ],
              ),
              SizedBox(width: 2.5 *SizeConfig.heightMultiplier!,),
              Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                      child: Padding(
                        padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),
                        child: Text('OR',
                          style: TextStyle(
                              fontSize: 2.8 * SizeConfig.textMultiplier!,
                              fontFamily: 'Proxima',
                              color: Color(0xff6D6B6B),
                              fontWeight: FontWeight.w700
                          ),textAlign: TextAlign.center,),
                      )
                  )
              ),
              SizedBox(width: 2.5 *SizeConfig.heightMultiplier!,),
              Column(
                children: [
                  Container(
                    child: IconButton(
                      icon: Image.asset(Images.callIcon),
                      iconSize: 25.0 * SizeConfig.imageSizeMultiplier!,
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute( builder: (BuildContext context){
                            return CodePage();
                          },),
                        );
                      },
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: FittedBox(
                          child: Padding(
                            padding: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),
                            child: Text('CALL ME',
                              style: TextStyle(
                                  fontSize: 2.4 * SizeConfig.textMultiplier!,
                                  fontFamily: 'OpenSans',
                                  color: Color(0xff7E7E7E),
                                  fontWeight: FontWeight.w700
                              ),textAlign: TextAlign.center,),
                          )
                      )
                  ),
                ],
              ),
            ],
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
                        return SignupStep1();
                      },),
                    );
                  },
                  child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                ),
              )
          )
        ],
      ),
    );
  }
}
