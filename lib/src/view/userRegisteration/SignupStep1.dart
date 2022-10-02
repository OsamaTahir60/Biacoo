
import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/userRegisteration/SignupStep2.dart';
import 'package:biacoo/src/view/userRegisteration/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_svg/svg.dart';

TextEditingController name = new TextEditingController();
TextEditingController number = new TextEditingController();
TextEditingController email = new TextEditingController();
TextEditingController pass = new TextEditingController();


class SignupStep1 extends StatefulWidget {
  const SignupStep1({Key? key}) : super(key: key);

  @override
  _SignupStep1State createState() => _SignupStep1State();
}

class _SignupStep1State extends State<SignupStep1> {
  String gender = 'Gender';
  var dob = 'Date of birth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.appBackgroundColor,
        body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: false,
        child: step1(),
        ),

    );
  }
  Widget step1()
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
                      child: Text('Manual Sign Up',
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
                      child: Text('Step 1 of 2',
                        style: TextStyle(
                          fontSize: 2.2 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff382161),
                        ),textAlign: TextAlign.center,),
                    )
                )
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Your Name',
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Container(
                                width: 10*SizeConfig.widthMultiplier!,
                                height: 20.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 15.0,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:ExactAssetImage(Images.pakflag),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.0,),
                                    Text("+92",style: TextStyle(fontSize: 2.2*SizeConfig.textMultiplier!, fontFamily: 'OpenSans', fontWeight: FontWeight.w400,),),
                                    SizedBox(width: 0.0,),
                                  ],
                                ),
                              ),
                              hintText: 'Number',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.number,
                            controller: number,
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
                            value: gender,
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
                                gender = newValue!;
                              });
                            },
                            items: <String>['Gender','Male', 'Female', 'Other']
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
                  SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 30.0 *SizeConfig.widthMultiplier!,
                                  child: Text(
                                    dob,
                                    // style: TextStyle(color: Color(0xff000000),fontSize: 2.5 * SizeConfig.textMultiplier,fontWeight: FontWeight.w400),
                                    style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xff000000),fontFamily: "OpenSans",fontWeight: FontWeight.w400),
                                  )
                              ),
                              IconButton(
                                  icon: ImageIcon(
                                    AssetImage(Images.dropdownIcon),
                                    color: Color(0xff000000),
                                    size: 1.7 * SizeConfig.heightMultiplier!,
                                  ),
                                  padding: EdgeInsets.only(left: 15.0),
                                  onPressed: (){
                                    DatePicker.showDatePicker(
                                        context,
                                        showTitleActions: true,
                                        minTime: DateTime(1947, 1, 1),
                                        maxTime: DateTime.now(),
                                        onConfirm: (date){
                                          dob=date.toString().replaceAll(' 00:00:00.000', '');
                                          setState((){
                                            dob=dob;
                                            print(dob);
                                            // udob(dob);
                                          });
                                        },
                                        currentTime: DateTime.now(),
                                        locale: LocaleType.en
                                    );
                                  }
                              ),
                            ],
                          )

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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            controller: email,
                            autofillHints:[AutofillHints.email],
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            controller: pass,
                            autofillHints:[AutofillHints.password],
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
                          child: TextFormField(
                            style: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                            ),
                            keyboardType: TextInputType.text,
                            autofillHints:[AutofillHints.password],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0 *SizeConfig.heightMultiplier!,),
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
                               return SignupStep2();
                            },),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute( builder: (BuildContext context){
                                return WelcomeScreen();
                              },),
                            );
                          },
                          child:  Icon(Icons.arrow_back ,size: 8*SizeConfig.imageSizeMultiplier!,),
                        ),
                      )
                  )
                ],
              ),
            ),


          ]
      ),
    );
  }
}
