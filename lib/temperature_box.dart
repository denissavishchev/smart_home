import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/temperature_box_decor.dart';

class TemperatureBox extends StatefulWidget {
  const TemperatureBox({
    Key? key,
  }) : super(key: key);

  @override
  State<TemperatureBox> createState() => _TemperatureBoxState();
}

class _TemperatureBoxState extends State<TemperatureBox> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: -30,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.26,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView(
                perspective: 0.005,
                diameterRatio: 4,
                squeeze: 0.9,
                offAxisFraction: 1.5,
                physics: const FixedExtentScrollPhysics(),
                onSelectedItemChanged: (index) => setState(() {
                  isSelected = index;
                }),
                itemExtent: 100,
                children: List.generate(
                  31,
                  (index) => RotatedBox(
                    quarterTurns: 1,
                    child: Center(
                      child: AnimatedSize(
                        duration: const Duration(milliseconds: 100),
                        child: Text(
                          '${index + 15}',
                          style: TextStyle(
                              fontFamily: 'good',
                              fontSize: isSelected == index ? 34 : 20,
                              color: isSelected == index
                                  ? kYellow
                                  : Colors.white.withOpacity(0.5)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: SizedBox(
            width: 110,
            height: 90,
            child: CustomPaint(
              painter: TemperatureBoxDecor(),
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 12, 10, 25),
                alignment: Alignment.topRight,
                width: 20,
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '   o',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'C',
                      style: TextStyle(color: Colors.white, fontFamily: 'good'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: CustomPaint(
                painter: TemperatureBoxBottom(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Text(
                      'Temperature',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontFamily: 'good',
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
