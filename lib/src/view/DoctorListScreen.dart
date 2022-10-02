import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/DoctorProfile.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DoctorListScreen extends StatefulWidget {
  const DoctorListScreen({Key? key}) : super(key: key);

  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          bottom: false,
          right: false,
          left: true,
          child: ListView(
            children: [
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
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
                        child: Text("Dentist",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
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
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("All Doctors",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                        ),
                      )
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child:Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(width: 1.0, color: Colors.black),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Online Doctors",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                        ),
                      )
                  ),


                ],
              ),
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 75.0 * SizeConfig.widthMultiplier!,
                  height: 6.5 * SizeConfig.heightMultiplier!,
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
                      padding: EdgeInsets.only(top:0.3*SizeConfig.heightMultiplier!,left: 1.0 * SizeConfig.heightMultiplier!,right: 2.5 * SizeConfig.heightMultiplier!),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 2.1*SizeConfig.textMultiplier!,),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search Dentist',
                          hintStyle: TextStyle(fontSize: 2.3*SizeConfig.textMultiplier!,color: Color(0xffC5C2C2),fontFamily: "OpenSans"),
                        ),
                        keyboardType: TextInputType.text,
                        //controller: pass,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),

              doctorList(),
              doctorList(),

              doctorList(),

              doctorList(),
              doctorList(),

              doctorList(),

              doctorList(),

              doctorList(),
              doctorList(),
              doctorList(),
              doctorList(),
              doctorList(),
              doctorList(),


            ],
          )
      ),
    );
  }
  Widget doctorList()
  {
    return Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
      child:InkWell(
        onTap: ()
        {
          Navigator.of(context).push(
            MaterialPageRoute( builder: (BuildContext context){
              return DoctorProfileScreen();
            },),
          );
        },
        child:  Container(
          height: 10.0*SizeConfig.heightMultiplier!,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.black),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(2.0),
                width: 20.0*SizeConfig.widthMultiplier!,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(2.0),
                      height: 8.0*SizeConfig.heightMultiplier!,
                      width: 15.0*SizeConfig.widthMultiplier!,
                      decoration: BoxDecoration(
                        border: Border.all(width:0.5,color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(
                          image: AssetImage(Images.doctor),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Icon(Icons.check_circle,color: Colors.green,size:3.5*SizeConfig.imageSizeMultiplier!),
                    )

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(2.0),
                height: 9.0*SizeConfig.heightMultiplier!,
                width: 45.0*SizeConfig.widthMultiplier!,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 1.5 * SizeConfig.heightMultiplier!,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:Text('Dr. Umer Mushtaq',
                        style: TextStyle(
                          fontSize: 2.0 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans-Regular',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),

                    ),
                    SizedBox(height: 0.5 * SizeConfig.heightMultiplier!,),
                    Align(
                      alignment: Alignment.topLeft,
                      child:Text('(5) 1454 Reviews',
                        style: TextStyle(
                          fontSize: 1.5 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans-Regular',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),

                    ),
                    SizedBox(height: 0.2 * SizeConfig.heightMultiplier!,),
                    Align(
                      alignment: Alignment.topLeft,
                      child:Text('Dentist (3 Years Experience)',
                        style: TextStyle(
                          fontSize: 1.5 * SizeConfig.textMultiplier!,
                          fontFamily: 'OpenSans-Regular',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6D6B6B),
                        ),textAlign: TextAlign.center,),

                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(2.0),
                height: 9.0*SizeConfig.heightMultiplier!,
                width: 21.0*SizeConfig.widthMultiplier!,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),

                      width: 9.0 * SizeConfig.widthMultiplier!,
                      child: ImageIcon(
                        AssetImage(Images.docAppIcon),
                        color: Color(0xff707070),
                        size: 15 * SizeConfig.heightMultiplier!,),
                    ),
                    SizedBox(width: 0.3 * SizeConfig.heightMultiplier!,),
                    Container(
                      margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),
                      width: 9.0 * SizeConfig.widthMultiplier!,
                      child:ImageIcon(
                        AssetImage(Images.docCallIcon),
                        color: Color(0xff707070),
                        size: 15 * SizeConfig.heightMultiplier!,),
                    ),

                  ],
                ),
              ),
            ],
          ),

        ),
      )
    );
  }
}
