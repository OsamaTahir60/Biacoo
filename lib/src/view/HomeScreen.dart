import 'package:biacoo/plugins/images.dart';
import 'package:biacoo/plugins/size_config.dart';
import 'package:biacoo/plugins/styling.dart';
import 'package:biacoo/src/view/userFragments/DoctorListFragment.dart';
import 'package:biacoo/src/view/userFragments/HomeFragment.dart';
import 'package:biacoo/src/view/userFragments/MyOrdersFragment.dart';
import 'package:biacoo/src/view/userFragments/NotificationFragment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedDrawerIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
  }

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new HomeFragment();
      case 1:
        return new NotificationFragment();
      case 2:
        return new NotificationFragment();
      case 3:
        return new MyOrderFragment();
      // case 4:
      //   return new ProfileFragment();

      default:
        return new Text("Error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.appBackgroundColor,
      body: _getDrawerItemWidget(_selectedDrawerIndex),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(1.0),
          height: 10 * SizeConfig.heightMultiplier!,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.2,0.9],
              colors: [
                Color(0xff28225E),
                Color(0xff28225E),
                Color(0xff28225E),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 19 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                  border: Border.all(width:0.5 * SizeConfig.widthMultiplier!,color: Colors.white)
                ),
                //padding: EdgeInsets.all(1.0 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => _onItemTapped(0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier!),
                            height: 4 * SizeConfig.heightMultiplier!,
                            width: 15.0 * SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:ExactAssetImage(Images.homeIcon),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),
                            child: Text('Home',
                              style: TextStyle(color: Colors.white,fontSize: 1.2 * SizeConfig.textMultiplier!,fontWeight: FontWeight.bold,fontFamily: "Muli"),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 19 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    border: Border.all(width:0.5 * SizeConfig.widthMultiplier!,color: Colors.white)
                ),
                //padding: EdgeInsets.all(1.0 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [

                    InkWell(
                      onTap: () => _onItemTapped(1),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier!),
                            height: 4 * SizeConfig.heightMultiplier!,
                            width: 15.0 * SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:ExactAssetImage(Images.notificationIcon),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),

                            child: Text('Notification',
                              style: TextStyle(color: Colors.white,fontSize: 1.2 * SizeConfig.textMultiplier!,fontWeight: FontWeight.bold,fontFamily: "Muli"),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 19 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    border: Border.all(width:0.5 * SizeConfig.widthMultiplier!,color: Colors.white)
                ),
                //padding: EdgeInsets.all(1.0 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [

                    InkWell(
                      onTap: () => _onItemTapped(2),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier!),
                            height: 4 * SizeConfig.heightMultiplier!,
                            width: 15.0 * SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:ExactAssetImage(Images.appointmentIcon),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),

                            child: Text('Appointment',
                              style: TextStyle(color: Colors.white,fontSize: 1.2 * SizeConfig.textMultiplier!,fontWeight: FontWeight.bold,fontFamily: "Muli"),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 19 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    border: Border.all(width:0.5 * SizeConfig.widthMultiplier!,color: Colors.white)
                ),
                //padding: EdgeInsets.all(1.0 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [

                    InkWell(
                      onTap: () => _onItemTapped(3),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier!),
                            height: 4 * SizeConfig.heightMultiplier!,
                            width: 15.0 * SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:ExactAssetImage(Images.orderIcon),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),

                            child: Text('My orders',
                              style: TextStyle(color: Colors.white,fontSize: 1.2 * SizeConfig.textMultiplier!,fontWeight: FontWeight.bold,fontFamily: "Muli"),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 19 * SizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    border: Border.all(width:0.5 * SizeConfig.widthMultiplier!,color: Colors.white)
                ),
                //padding: EdgeInsets.all(1.0 * SizeConfig.heightMultiplier),
                child: Column(
                  children: [

                    InkWell(
                      onTap: () => _onItemTapped(4),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 2 * SizeConfig.heightMultiplier!),
                            height: 4 * SizeConfig.heightMultiplier!,
                            width: 15.0 * SizeConfig.widthMultiplier!,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:ExactAssetImage(Images.profileIcon),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 1 * SizeConfig.heightMultiplier!),

                            child: Text('Profile',
                              style: TextStyle(color: Colors.white,fontSize: 1.2 * SizeConfig.textMultiplier!,fontWeight: FontWeight.bold,fontFamily: "Muli"),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),

    );
  }
}
