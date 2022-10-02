import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/Vendor/doctor/DoctorMainHome.dart';
import 'package:biacoo/src/view/Vendor/doctor/DoctorSignUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
TextEditingController name = new TextEditingController();
TextEditingController pass = new TextEditingController();
class DoctorSignIn extends StatefulWidget {
  const DoctorSignIn({Key? key}) : super(key: key);

  @override
  _DoctorSignInState createState() => _DoctorSignInState();
}

class _DoctorSignInState extends State<DoctorSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              DefaultTabController(
                  length: 3, // length of tabs
                  initialIndex: 0,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: Material(
                        color: Colors.white,
                        child: TabBar(
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black,
                          indicator: BoxDecoration(
                          gradient: LinearGradient(
                          colors: const [Color(0xffC1272D), Color(0xff651C69)])),
                          tabs: [
                            Tab(text: 'Doctor'),
                            Tab(text: 'Pharmacy'),
                            Tab(text: 'Lab'),
                          ],
                        ),
                      )
                    ),
                    Container(
                        height: 100*SizeConfig.heightMultiplier!, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                        ),
                        child: TabBarView(children: <Widget>[
                          //Pharmacy
                          ListView(
                            children: [
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Work With Us",style: TextStyle(fontSize:2.2*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                    child: Text('Join', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute( builder: (BuildContext context){
                                          return DoctorSignup();
                                        },),
                                      );
                                    },
                                  ),
                                ),
                              ),
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
                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Sign In",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return ForgetPasswordScreen();
                                      //   },),
                                      // );
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
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                                    child: Text('Sign In', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute( builder: (BuildContext context){
                                          return DoctorMainHome();
                                        },),
                                      );
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),
                          //Labs
                          ListView(
                            children: [
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Work With Us",style: TextStyle(fontSize:2.2*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                    child: Text('Join', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return HomeScreen();
                                      //   },),
                                      // );
                                    },
                                  ),
                                ),
                              ),
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
                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Sign In",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return ForgetPasswordScreen();
                                      //   },),
                                      // );
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
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                                    child: Text('Sign In', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return HomeScreen();
                                      //   },),
                                      // );
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),
                          ListView(
                            children: [
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Work With Us",style: TextStyle(fontSize:2.2*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                    child: Text('Join', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return HomeScreen();
                                      //   },),
                                      // );
                                    },
                                  ),
                                ),
                              ),
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
                              ),
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                    child: Text("Sign In",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                                  )
                              ),
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
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return ForgetPasswordScreen();
                                      //   },),
                                      // );
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
                              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
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
                                    child: Text('Sign In', style: TextStyle(fontSize: 2.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                    onPressed: () {
                                      // Navigator.of(context).pushReplacement(
                                      //   MaterialPageRoute( builder: (BuildContext context){
                                      //     return HomeScreen();
                                      //   },),
                                      // );
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ])
                    )
                  ])
              ),
            ],
          ),
        ),
      ),
    );
  }
}
