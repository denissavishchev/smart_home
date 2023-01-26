import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/gradient_text.dart';

import 'main_page.dart';

class LivingRoomPage extends StatelessWidget {
  const LivingRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height * 0.5,
                child: Image.asset(
                  'assets/images/room.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                color: kLightBlack,
                width: size.width * 0.15,
                height: size.height * 0.5,
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: GestureDetector(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MainPage())),
                          child: Image.asset('assets/icons/back.png')),
                    ),
                    const RotatedBox(
                      quarterTurns: 1,
                      child: GradientText('Living Room', gradient: LinearGradient(
                          colors: [
                            kBlue,
                            kRed
                          ]
                      ),
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            kLightBlack.withOpacity(0.2),
                            kLightBlack,
                            kLightBlack,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: const [0.0, 0.7, 0.9])),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(20),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.green,
                                      spreadRadius: 1,
                                      blurRadius: 2)
                                ]),
                          ),
                          GradientText(
                            'Available Devices',
                            gradient: LinearGradient(colors: [
                              Colors.white,
                              Colors.white.withOpacity(0.5),
                            ],
                              stops: const [
                                0.8, 0.9
                              ]
                            ),
                            style: const TextStyle(fontFamily: 'good'),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        width: 22,
                        height: 22,
                        child: Image.asset('assets/icons/menu.png'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: size.width,
            height: size.height * 0.25,
            color: kLightBlack,
          )
        ],
      ),
    );
  }
}


