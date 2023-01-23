import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/gradient_text.dart';

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
                  Positioned(
                    left: size.width * 0.38,
                    bottom: 130,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 20,
                            blurRadius: 140
                          )
                        ]
                      ),
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.38,
                    bottom: size.height * 0.4,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 20,
                            blurRadius: 140
                          )
                        ]
                      ),
                    ),
                  ),
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
                        padding: const EdgeInsets.fromLTRB(10, 30, 10, 50),
                        width: size.width,
                        height: size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 14.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset('assets/icons/back.png'),
                                  ),
                                  SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: Image.asset('assets/icons/menu.png'),
                                  ),
                                ],
                              ),
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
                                    Text('STATISTICS', style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'good',
                                        color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.bold),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text('36 %', style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'good', color: Colors.white, fontWeight: FontWeight.bold),),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text('Brightness', style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'good', color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.bold),),
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
                                    Text('SCHEDULE', style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'good', color: Colors.white.withOpacity(0.6),
                                        fontWeight: FontWeight.bold),)
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
                    top: 20,
                    child: SizedBox(
                      width: size.width * 0.40,
                      height: size.height * 0.5,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Column(
                          children: [
                            Text('Pendant Light', style: TextStyle(
                                color: kGrey.withOpacity(0.05),
                                fontSize: 60, fontWeight: FontWeight.bold
                            ),),
                            const GradientText('   Pendant Light', gradient: LinearGradient(
                                colors: [
                                  kBlue,
                                  kRed
                                ]
                            ),
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                            ),
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
