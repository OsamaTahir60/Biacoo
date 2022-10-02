import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:flutter/material.dart';
class BookingDetailScreen extends StatefulWidget {
  const BookingDetailScreen({Key? key}) : super(key: key);

  @override
  _BookingDetailScreenState createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        top: true,
        child:  SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
              Padding(padding: EdgeInsets.all(1*SizeConfig.heightMultiplier!),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Images.bHome,
                      width:7.0 * SizeConfig.imageSizeMultiplier!,
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                    child: Text("Booking Detail",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                  )
              ),
              Padding(
                  padding:EdgeInsets.only(left: 2*SizeConfig.heightMultiplier!,right: 2*SizeConfig.heightMultiplier!),
                  child: Column(
                    children: [
                      SizedBox(height: 2.0 *SizeConfig.heightMultiplier!,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 8*SizeConfig.heightMultiplier!,
                            width: 35*SizeConfig.widthMultiplier!,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("Patient Name",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("Mr.Talha Ahmad Chatah",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 8*SizeConfig.heightMultiplier!,
                            width: 35*SizeConfig.widthMultiplier!,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("Appointment Id",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("abc 123",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                ),
                              ],
                            ),
                          ),




                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 8*SizeConfig.heightMultiplier!,
                            width: 35*SizeConfig.widthMultiplier!,
                            color: Colors.white,
                            child:   Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("Date:",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("14 Jan 2021",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 8*SizeConfig.heightMultiplier!,
                            width: 35*SizeConfig.widthMultiplier!,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("Time",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                                  child: Text("11:00:00 am",style: TextStyle(fontSize:1.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child:  Padding(
                              padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                              child: Text("Past Bookings",style: TextStyle(fontSize:2.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                            ),
                          ),
                          Container(
                            child:  Icon(Icons.arrow_drop_down,
                                color:Colors.black),
                          ),

                        ],
                      ),
                      Divider(endIndent: 2.0, indent: 2.0, color: Colors.black,thickness: 1.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Diagnoses: ",style: TextStyle(fontSize:1.9*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("It is a case of seasonal allergy, also could be pollen allergy  ",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Read More...",style: TextStyle(fontSize:1.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Divider(endIndent: 2.0, indent: 2.0, color: Colors.black,thickness: 1.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Prescription: ",style: TextStyle(fontSize:1.9*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Column(
                            children: [
                              Text("Zertix (100mg)",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                              Text("Zertix (100mg)",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                              Text("Zertix (100mg)",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                            ],
                          )
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("LAB Tests: ",style: TextStyle(fontSize:1.9*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                            child: Column(
                              children: [
                                Text("RAST test",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                Text("RAST test",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                                Text("RAST test",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                              ],
                            )
                        ),
                      ),
                      Divider(endIndent: 2.0, indent: 2.0, color: Colors.black,thickness: 1.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Chat: ",style: TextStyle(fontSize:1.9*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Patient: ",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Doctor: ",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Read More...",style: TextStyle(fontSize:1.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Divider(endIndent: 2.0, indent: 2.0, color: Colors.black,thickness: 1.0,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Review: ",style: TextStyle(fontSize:1.9*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("I am satisfied with this online appointment ",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("Read More...",style: TextStyle(fontSize:1.1*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans",fontWeight: FontWeight.w400),textAlign: TextAlign.left,),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 40.0 * SizeConfig.widthMultiplier!,
                              height: 4.0 * SizeConfig.heightMultiplier!,
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
                                child: Text('Confirm', style: TextStyle(fontSize: 1.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                onPressed: () {
                                  // Navigator.of(context).pushReplacement(
                                  //   MaterialPageRoute( builder: (BuildContext context){
                                  //     return DoctorMainHome();
                                  //   },),
                                  // );
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 40.0 * SizeConfig.widthMultiplier!,
                              height: 4.0 * SizeConfig.heightMultiplier!,
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
                                child: Text('Start', style: TextStyle(fontSize: 1.8 * SizeConfig.textMultiplier!,fontWeight: FontWeight.w400,fontFamily: "Roboto",color: Colors.white),),
                                onPressed: () {
                                  // Navigator.of(context).pushReplacement(
                                  //   MaterialPageRoute( builder: (BuildContext context){
                                  //     return DoctorMainHome();
                                  //   },),
                                  // );
                                },
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  )
              ),
            ],
          )
        ),
      ),
    );
  }
}
