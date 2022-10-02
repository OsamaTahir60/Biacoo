import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/Vendor/doctor/DoctorSignIn.dart';
import 'package:flutter/material.dart';
TextEditingController name = new TextEditingController();
TextEditingController email = new TextEditingController();
TextEditingController contact = new TextEditingController();
TextEditingController speciality = new TextEditingController();
TextEditingController degree = new TextEditingController();
TextEditingController subSpeciality = new TextEditingController();
TextEditingController experience = new TextEditingController();
TextEditingController workPlace = new TextEditingController();
class DoctorSignup extends StatefulWidget {
  const DoctorSignup({Key? key}) : super(key: key);

  @override
  _DoctorSignupState createState() => _DoctorSignupState();
}

class _DoctorSignupState extends State<DoctorSignup> {
  submitSignupForm()
  {
    showDialog(
      context: context, // <<----
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
            elevation: 0,
            backgroundColor: Colors.black54,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 30 * SizeConfig.heightMultiplier!,
                  child: Padding(
                    padding: EdgeInsets.all(6 * SizeConfig.heightMultiplier!),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          //   alignment: Alignment.center,
                          width: 42.0 * SizeConfig.widthMultiplier!,
                          child: Text(
                            'Your Application has been received. BIAACO will be in touch',
                            style: TextStyle(fontSize: 2.5*SizeConfig.textMultiplier!,color: Colors.white,fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 0,),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  child: Align(
                    child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff6A21B8)
                        ),
                        child:Container(
                          decoration: BoxDecoration(
                          ),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                            size: 11.5*SizeConfig.imageSizeMultiplier!,
                          ),
                        )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    height: 5 * SizeConfig.heightMultiplier!,
                    width: 33.0 * SizeConfig.heightMultiplier!,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          stops: [0.01, 0.4],
                          colors: [Colors.red, Color(0xff651C69)]
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return DoctorSignIn();
                          },),
                        );
                      },
                      child: Text("Got it",style: TextStyle(fontSize: 3*SizeConfig.textMultiplier!,color: Colors.white,fontWeight: FontWeight.w400), ),
                    ),
                  ),
                ),
              ],
            )
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: true,
        child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
            Align(
                alignment: Alignment.topCenter,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('Welcome to BIAACO',
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
                      padding: EdgeInsets.only(top: 0.5 * SizeConfig.heightMultiplier!),
                      child: Text('Please fill the information below',
                        style: TextStyle(
                          fontSize: 1.6 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),
                    )
                )
            ),
            // personal information
            SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
            Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all( 1.8 * SizeConfig.heightMultiplier!),
                      child: Text('Personal Info:',
                        style: TextStyle(
                          fontSize: 2.4 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.left,),
                    )
                )
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 75.0 * SizeConfig.widthMultiplier!,
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: email,
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Contact No',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: contact,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
          //  medical information
            SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
            Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all( 1.8 * SizeConfig.heightMultiplier!),
                      child: Text('Medical Info:',
                        style: TextStyle(
                          fontSize: 2.4 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans_semibold',
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.left,),
                    )
                )
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 75.0 * SizeConfig.widthMultiplier!,
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Speciality',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: speciality,
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Degree',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller:degree,
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Sub Speciality',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: subSpeciality,
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Experience',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: experience,
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
                height: 6.5 * SizeConfig.heightMultiplier!,
                margin: EdgeInsets.only(top:0.5 * SizeConfig.heightMultiplier! ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                  ),
                  child:  Container(
                    //top:0.5*SizeConfig.heightMultiplier
                    padding: EdgeInsets.only(top:0.0*SizeConfig.heightMultiplier!,left: 2.5 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white
                    ),
                    child: TextFormField(
                      style: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Work Place',
                        hintStyle: TextStyle(fontSize: 1.8*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                      ),
                      keyboardType: TextInputType.text,
                      controller: workPlace,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 65.0 * SizeConfig.widthMultiplier!,
                height: 6.0 * SizeConfig.heightMultiplier!,
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
                  child: Text('Submit', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                  onPressed: () {
                   submitSignupForm();
                  },
                ),
              ),
            ),
          ],
        )
        )
      ),

    );
  }
}
