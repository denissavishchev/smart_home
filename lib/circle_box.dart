import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:smart_home/constants.dart';

class CircleBox extends StatefulWidget {


   CircleBox({Key? key}) : super(key: key);

  @override
  State<CircleBox> createState() => CircleBoxState();
}

class CircleBoxState extends State<CircleBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 270,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            // left: 0,
            child: Row(
              children: [
                Text("Low", style: TextStyle(fontSize: 14,
                    fontFamily: 'good', color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.bold),),
                SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                      animationEnabled: true,
                      size: 260,
                      customWidths: CustomSliderWidths(
                        trackWidth: 3,
                        progressBarWidth: 8,
                        handlerSize: 8,
                      ),
                      infoProperties: InfoProperties(
                          mainLabelStyle: const TextStyle(color: Colors.transparent, fontWeight: FontWeight.bold, fontSize: 24)
                      ),
                      customColors: CustomSliderColors(
                        dotColor: Colors.white,
                        trackColor: Colors.white.withOpacity(0.3),
                        progressBarColors: [
                          Colors.white,
                          Colors.white.withOpacity(0.1),
                        ],
                      ),
                      counterClockwise: true,
                      startAngle: 160,
                      angleRange: 140
                  ),
                  min: 0,
                  max: 100,
                  initialValue: 0,
                  onChange: (double value) {
                    print(value);
                    // percentageModifier(value);
                    // setState(() {
                    //   value2(value);
                    // });
                  },
                  onChangeEnd: (double value4) {
                    // percentageModifier(value4);
                    // value1 = value4;
                    // setState(() {
                    // });
                  },
                ),
                Text("High", style: TextStyle(fontSize: 14,
                    fontFamily: 'good', color: Colors.white.withOpacity(0.6),
                    fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          SleekCircularSlider(
            appearance: CircularSliderAppearance(
              size: 210,
                customWidths: CustomSliderWidths(
                  trackWidth: 10,
                    progressBarWidth: 10,
                handlerSize: 13,
                ),
                infoProperties: InfoProperties(
                    mainLabelStyle: const TextStyle(
                        color: Colors.transparent,
                        fontWeight: FontWeight.bold,
                        fontSize: 24)
                ),
              customColors: CustomSliderColors(
                dotColor: Colors.white,
                trackGradientStartAngle: 0,
                trackGradientEndAngle: 360,
                trackColors: [
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                  Colors.pinkAccent,
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                ],
                gradientStartAngle: 0,
                gradientEndAngle: 360,
                progressBarColors: [
                  Colors.yellow,
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                  Colors.pinkAccent,
                  Colors.red,
                  Colors.orange,
                  Colors.yellow,
                ],
              ),
              startAngle: 0,
              angleRange: 360
            ),
            min: 0,
            max: 100,
            initialValue: 100,
            onChange: (double value) {
              // print(value);
            },
          ),
          Container(
            padding: const EdgeInsets.all(50),
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              color: kGrey.withOpacity(0.0),
              borderRadius: BorderRadius.circular(200),
              boxShadow: [
                BoxShadow(
                  color: kGrey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 8
                )
              ]
            ),
            child: Image.asset('assets/icons/off.png'),
          )
        ],
      ),
    );
  }
}
