import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/src/view/ProfileDetailScreen.dart';
import 'package:biacoo/src/view/pharmacy/VerifyOrder.dart';
import 'package:flutter/material.dart';
class MyOrderFragment extends StatefulWidget {
  const MyOrderFragment({Key? key}) : super(key: key);

  @override
  _MyOrderFragmentState createState() => _MyOrderFragmentState();
}

class _MyOrderFragmentState extends State<MyOrderFragment> {
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
                    child: Text("My Orders",style: TextStyle(fontSize:2.5*SizeConfig.textMultiplier!,color: Color(0xff6D6B6B),fontFamily: "OpenSans"),textAlign: TextAlign.center,),
                  )
              ),
              DefaultTabController(
                  length: 2, // length of tabs
                  initialIndex: 0,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
                    Container(
                      child: TabBar(
                        labelColor: Colors.grey,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Pharmacy'),
                          Tab(text: 'Lab'),
                        ],
                      ),
                    ),
                    Container(
                        height: 400, //height of TabBarView
                        decoration: BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                        ),
                        child: TabBarView(children: <Widget>[
                          //Pharmacy
                          Column(
                            children: [
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
                                                image: NetworkImage("https://reviewportal.pk/assets/company/9383cf1bc59d8d62685884131a2652cf.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 1.5 * SizeConfig.heightMultiplier!,),
                                          Container(
                                            margin: EdgeInsets.all(2.0),
                                            height: 9.0*SizeConfig.heightMultiplier!,
                                            width: 60.0*SizeConfig.widthMultiplier!,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 1.5 * SizeConfig.heightMultiplier!,),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child:Text('Shaheen Chemist Rawalpindi',
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
                                                    child:Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Order Date: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('12 dec 2021',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Order Time: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('11:00 AM',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        )
                                                      ],
                                                    )

                                                ),
                                                Align(
                                                    alignment: Alignment.topLeft,
                                                    child:Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Number of Tests: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('2',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Order Total: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('1200 PKR',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        )
                                                      ],
                                                    )

                                                ),
                                                SizedBox(height: 0.2 * SizeConfig.heightMultiplier!,),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child:Row(
                                                    children: [
                                                      Text('Payment Methods: ',
                                                        style: TextStyle(
                                                          fontSize: 1.3 * SizeConfig.textMultiplier!,
                                                          fontFamily: 'OpenSans-Regular',
                                                          fontWeight: FontWeight.w800,
                                                          color: Color(0xff6D6B6B),
                                                        ),textAlign: TextAlign.center,),
                                                      Text('Jazz Cash',
                                                        style: TextStyle(
                                                          fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                          fontFamily: 'OpenSans-Regular',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff6D6B6B),
                                                        ),textAlign: TextAlign.center,),
                                                    ],
                                                  ),

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
                          //Labs
                          Column(
                            children: [
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
                                            width: 60.0*SizeConfig.widthMultiplier!,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                SizedBox(height: 1.5 * SizeConfig.heightMultiplier!,),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child:Text('Chugtai Lab',
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
                                                  child:Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                     Row(
                                                       children: [
                                                         Text('Order Date: ',
                                                           style: TextStyle(
                                                             fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                             fontFamily: 'OpenSans-Regular',
                                                             fontWeight: FontWeight.w800,
                                                             color: Color(0xff6D6B6B),
                                                           ),textAlign: TextAlign.center,),
                                                         Text('12 dec 2021',
                                                           style: TextStyle(
                                                             fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                             fontFamily: 'OpenSans-Regular',
                                                             fontWeight: FontWeight.w600,
                                                             color: Color(0xff6D6B6B),
                                                           ),textAlign: TextAlign.center,),
                                                       ],
                                                     ),
                                                      Row(
                                                        children: [
                                                          Text('Order Time: ',
                                                            style: TextStyle(
                                                              fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                              fontFamily: 'OpenSans-Regular',
                                                              fontWeight: FontWeight.w800,
                                                              color: Color(0xff6D6B6B),
                                                            ),textAlign: TextAlign.center,),
                                                          Text('11:00 AM',
                                                            style: TextStyle(
                                                              fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                              fontFamily: 'OpenSans-Regular',
                                                              fontWeight: FontWeight.w600,
                                                              color: Color(0xff6D6B6B),
                                                            ),textAlign: TextAlign.center,),
                                                        ],
                                                      )
                                                    ],
                                                  )

                                                ),
                                                Align(
                                                    alignment: Alignment.topLeft,
                                                    child:Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Number of Tests: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('2',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Order Total: ',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w800,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                            Text('1200 PKR',
                                                              style: TextStyle(
                                                                fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                                fontFamily: 'OpenSans-Regular',
                                                                fontWeight: FontWeight.w600,
                                                                color: Color(0xff6D6B6B),
                                                              ),textAlign: TextAlign.center,),
                                                          ],
                                                        )
                                                      ],
                                                    )

                                                ),
                                                SizedBox(height: 0.2 * SizeConfig.heightMultiplier!,),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child:Row(
                                                    children: [
                                                      Text('Payment Methods: ',
                                                        style: TextStyle(
                                                          fontSize: 1.3 * SizeConfig.textMultiplier!,
                                                          fontFamily: 'OpenSans-Regular',
                                                          fontWeight: FontWeight.w800,
                                                          color: Color(0xff6D6B6B),
                                                        ),textAlign: TextAlign.center,),
                                                      Text('Jazz Cash',
                                                        style: TextStyle(
                                                          fontSize: 1.2 * SizeConfig.textMultiplier!,
                                                          fontFamily: 'OpenSans-Regular',
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff6D6B6B),
                                                        ),textAlign: TextAlign.center,),
                                                    ],
                                                  ),

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
