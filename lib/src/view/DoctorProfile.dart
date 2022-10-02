import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/WaitScreen.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class DoctorProfileScreen extends StatefulWidget {
  const DoctorProfileScreen({Key? key}) : super(key: key);

  @override
  _DoctorProfileScreenState createState() => _DoctorProfileScreenState();
}

class _DoctorProfileScreenState extends State<DoctorProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom:false,
        top:true,
        right:false,
        left:false,
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
                    child: Text("Profile",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
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
          Container(
            margin: EdgeInsets.all(5.0),
            height: 25.0*SizeConfig.heightMultiplier!,
            child:  Row(
              children: [
                Container(
                  margin: EdgeInsets.all(2.0),
                  height: 20.0*SizeConfig.heightMultiplier!,
                  width: 40.0*SizeConfig.widthMultiplier!,
                  decoration: BoxDecoration(
                    border: Border.all(width:0.5,color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage(Images.doctor),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
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
                        child:Text('Experience: 3 Years',
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Text("Location",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                    )
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Container(
                        width: double.infinity,
                        height: 25*SizeConfig.heightMultiplier!,
                        color: Colors.grey,
                      ),
                    )
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Text("Currently Practicing",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Align(
                    //     alignment: Alignment.topLeft,
                    //     child: Padding(
                    //       padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                    //       child: InkWell(
                    //         onTap: (){
                    //           // Navigator.of(context).pushReplacement(
                    //           //   MaterialPageRoute( builder: (BuildContext context){
                    //           //     return DoctorListScreen();
                    //           //   },),
                    //           // );
                    //         },
                    //         // child:  Image.asset(
                    //         //   Images.BiaacoB,
                    //         //   width:5.0 * SizeConfig.imageSizeMultiplier!,
                    //         // ),
                    //       ),
                    //     )
                    // ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                          child: Text("SHAIKH ZAYED HOSPITAL LAHORE",style: TextStyle(fontSize:1.4*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                        )
                    ),
                  ],
                ),
                SizedBox(height: 2.0 * SizeConfig.heightMultiplier!,),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0.5*SizeConfig.heightMultiplier!),
                      child: Text("Reviews",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                    )
                ),
                SizedBox(height: 1.0 * SizeConfig.heightMultiplier!,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black)
                        ),
                        height: 15*SizeConfig.heightMultiplier!,
                        width: 47*SizeConfig.widthMultiplier!,
                        child:Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 5.0*SizeConfig.heightMultiplier!,
                                          width: 10.0*SizeConfig.widthMultiplier!,
                                          decoration: BoxDecoration(
                                            border: Border.all(width:0.5,color: Colors.black),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                            image: DecorationImage(
                                              image: AssetImage(Images.doctor),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left:10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child:Text('Dr. Umer Mushtaq',
                                                  style: TextStyle(
                                                    fontSize: 1.0 * SizeConfig.textMultiplier!,
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
                                                    fontSize: 1.0 * SizeConfig.textMultiplier!,
                                                    fontFamily: 'OpenSans-Regular',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff6D6B6B),
                                                  ),textAlign: TextAlign.center,),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                Padding(
                                    padding:EdgeInsets.all(4.0),
                                    child:Container(
                                      height: 6.0*SizeConfig.heightMultiplier!,
                                      width: 44*SizeConfig.widthMultiplier!,
                                      child: Text('Is simply dummy text of the printing and typesetting industry. Lorem dummy text ever since the 1500s, ',
                                        style: TextStyle(
                                          fontSize: 1.2 * SizeConfig.textMultiplier!,
                                          fontFamily: 'OpenSans-Regular',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff6D6B6B),
                                        ),textAlign: TextAlign.left,),
                                    )
                                )
                              ],
                            )
                        )
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 1.0,color: Colors.black)
                        ),
                        height: 15*SizeConfig.heightMultiplier!,
                        width: 47*SizeConfig.widthMultiplier!,
                        child:Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 5.0*SizeConfig.heightMultiplier!,
                                          width: 10.0*SizeConfig.widthMultiplier!,
                                          decoration: BoxDecoration(
                                            border: Border.all(width:0.5,color: Colors.black),
                                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                            image: DecorationImage(
                                              image: AssetImage(Images.doctor),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left:10.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child:Text('Dr. Umer Mushtaq',
                                                  style: TextStyle(
                                                    fontSize: 1.0 * SizeConfig.textMultiplier!,
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
                                                    fontSize: 1.0 * SizeConfig.textMultiplier!,
                                                    fontFamily: 'OpenSans-Regular',
                                                    fontWeight: FontWeight.w600,
                                                    color: Color(0xff6D6B6B),
                                                  ),textAlign: TextAlign.center,),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                Padding(
                                    padding:EdgeInsets.all(4.0),
                                    child:Container(
                                      height: 6.0*SizeConfig.heightMultiplier!,
                                      width: 44*SizeConfig.widthMultiplier!,
                                      child: Text('Is simply dummy text of the printing and typesetting industry. Lorem dummy text ever since the 1500s, ',
                                        style: TextStyle(
                                          fontSize: 1.2 * SizeConfig.textMultiplier!,
                                          fontFamily: 'OpenSans-Regular',
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff6D6B6B),
                                        ),textAlign: TextAlign.left,),
                                    )
                                )
                              ],
                            )
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height:4.0 * SizeConfig.heightMultiplier!,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute( builder: (BuildContext context){
                          return WaitingScreen();
                        },),
                      );
                    },
                    child: ImageIcon(
                      AssetImage(Images.phone),
                      color: Colors.green,
                      size: 8 * SizeConfig.heightMultiplier!,
                    ),
                  ),
                  SizedBox(height:1.0 * SizeConfig.heightMultiplier!,),
                  Text('Call a',
                    style: TextStyle(
                      fontSize: 2.0 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6D6B6B),
                    ),textAlign: TextAlign.left,),
                  Text('Doctor',
                    style: TextStyle(
                      fontSize: 2.0 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6D6B6B),
                    ),textAlign: TextAlign.left,),
                ],
              ),
              SizedBox(width: 1.0 * SizeConfig.heightMultiplier!,),
              Column(
                children: [
                  ImageIcon(
                    AssetImage(Images.appointmentIcon),
                    color: Colors.green,
                    size: 8 * SizeConfig.heightMultiplier!,),
                  SizedBox(height:1.0 * SizeConfig.heightMultiplier!,),
                  Text('Book an',
                    style: TextStyle(
                      fontSize: 2.0 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6D6B6B),
                    ),textAlign: TextAlign.left,),
                  Text('Appointment',
                    style: TextStyle(
                      fontSize: 2.0 * SizeConfig.textMultiplier!,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w600,
                      color: Color(0xff6D6B6B),
                    ),textAlign: TextAlign.left,),
                ],
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
