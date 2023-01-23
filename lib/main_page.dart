import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

import 'main_page_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double width = 393;
    double height = 803;

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                kGrey,
                kGrey,
                kDarkGrey,
                kDarkGrey
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                 0.0, 0.0, 0.6, 0.9
              ]
          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange.withOpacity(0.0)
                    ),
                    child: CustomPaint(
                      painter: MainPageBox(),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(24, 30, 24, 50),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset('assets/icons/back.png'),
                                ),
                                SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: Image.asset('assets/icons/menu.png'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset('assets/icons/stat.png'),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Text('STATISTICS', style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Orbitron', color: Colors.white),)
                                  ],
                                ),
                                Column(
                                  children: const [
                                    Text('36 %', style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Orbitron', color: Colors.white),),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Brightness', style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Orbitron', color: Colors.white),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset('assets/icons/time.png'),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Text('SCHEDULE', style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'Orbitron', color: Colors.white),)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                    left: width * 0.24,
                    child: SizedBox(
                      width: width * 0.55,
                      height: height * 0.55,
                      child: Image.asset('assets/images/lamp.png'),
                    ),
                  ),

                ],
              ),
            ),
          )),
    );
  }
}
