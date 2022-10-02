import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';

class NotificationFragment extends StatefulWidget {
  const NotificationFragment({Key? key}) : super(key: key);

  @override
  _NotificationFragmentState createState() => _NotificationFragmentState();
}

class _NotificationFragmentState extends State<NotificationFragment> {
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                  child:Text('Appointment Confirmed',
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
                                  child:Text('with Dr.Umar Mushtak',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                  child:Text('Appointment Rejected',
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
                                  child:Text('with Dr.Umar Mushtak',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
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
                                  child:Text('Request Accepted',
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
                                  child:Text('From Chugtai lab',
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
                                  child:Text('Collect Sample from home',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
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
                                  child:Text('Request Accepted',
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
                                  child:Text('From Chugtai lab',
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
                                  child:Text('Collect Sample from home',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
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
                                  child:Text('Request Accepted',
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
                                  child:Text('From Chugtai lab',
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
                                  child:Text('Collect Sample from home',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
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
                                  child:Text('Request Accepted',
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
                                  child:Text('From Chugtai lab',
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
                                  child:Text('Collect Sample from home',
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
                      // Navigator.of(context).push(
                      //   MaterialPageRoute( builder: (BuildContext context){
                      //     return DoctorProfileScreen();
                      //   },),
                      // );
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
                                image: NetworkImage("https://media-exp1.licdn.com/dms/image/C4E0BAQFUD81C97pnsA/company-logo_200_200/0/1519895430891?e=2159024400&v=beta&t=ITEtZSfYGfwdo4a3P0Y2CDNnlaeU-e8YySb6OtImrfs"),
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
                                  child:Text('Request Accepted',
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
                                  child:Text('From Chugtai lab',
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
                                  child:Text('Collect Sample from home',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
