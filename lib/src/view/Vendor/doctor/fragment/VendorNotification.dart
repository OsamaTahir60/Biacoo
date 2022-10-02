import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/Vendor/doctor/BookingDetailScreen.dart';
import 'package:flutter/material.dart';
class VendorNotificationFragment extends StatefulWidget {
  const VendorNotificationFragment({Key? key}) : super(key: key);

  @override
  _VendorNotificationFragmentState createState() => _VendorNotificationFragmentState();
}

class _VendorNotificationFragmentState extends State<VendorNotificationFragment> {
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
              SizedBox(height: 1.0 *SizeConfig.heightMultiplier!,),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                    child: Text("Notifications",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                  )
              ),
              Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                  child:InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return BookingDetailScreen();
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8.0*SizeConfig.heightMultiplier!,
                            width: 15.0*SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(width:0.5,color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(Images.doctor),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
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
                                  child:Text('Recieved Booking',
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
                                  child:Text('with Patient: XYZ',
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
                                  child:Text('at 11:00 PM',
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
                        ],
                      ),

                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                  child:InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return BookingDetailScreen();
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8.0*SizeConfig.heightMultiplier!,
                            width: 15.0*SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(width:0.5,color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(Images.doctor),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
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
                                  child:Text('Recieved Booking',
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
                                  child:Text('with Patient: XYZ',
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
                                  child:Text('at 11:00 PM',
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
                        ],
                      ),

                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                  child:InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return BookingDetailScreen();
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8.0*SizeConfig.heightMultiplier!,
                            width: 15.0*SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(width:0.5,color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(Images.doctor),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
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
                                  child:Text('Recieved Booking',
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
                                  child:Text('with Patient: XYZ',
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
                                  child:Text('at 11:00 PM',
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
                        ],
                      ),

                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                  child:InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return BookingDetailScreen();
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8.0*SizeConfig.heightMultiplier!,
                            width: 15.0*SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(width:0.5,color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(Images.doctor),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
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
                                  child:Text('Recieved Booking',
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
                                  child:Text('with Patient: XYZ',
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
                                  child:Text('at 11:00 PM',
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
                        ],
                      ),

                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(1.0*SizeConfig.heightMultiplier!),
                  child:InkWell(
                    onTap: ()
                    {
                      Navigator.of(context).push(
                        MaterialPageRoute( builder: (BuildContext context){
                          return BookingDetailScreen();
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(2.0),
                            height: 8.0*SizeConfig.heightMultiplier!,
                            width: 15.0*SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              border: Border.all(width:0.5,color: Colors.black),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                image: AssetImage(Images.doctor),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
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
                                  child:Text('Recieved Booking',
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
                                  child:Text('with Patient: XYZ',
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
                                  child:Text('at 11:00 PM',
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
                        ],
                      ),

                    ),
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
