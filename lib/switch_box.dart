import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class SwitchBox extends StatefulWidget {

  final Color color;
  final String icon;

  SwitchBox({Key? key,
    required this.color, required this.icon,

  }) : super(key: key);

  @override
  State<SwitchBox> createState() => _SwitchBoxState();
}

class _SwitchBoxState extends State<SwitchBox> {

  bool isSwitched = true;

  void _isSwitched(){
    setState(() {
      isSwitched = !isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 80,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.7),
                Colors.transparent
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
        ),
        Container(
          width: 78,
          height: 148,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kLightBlack
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: 45,
                height: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('ON', style: TextStyle(fontFamily: 'good', fontSize: 12, color: Colors.white),),
                    Container(
                      width: 30,
                      height: 2,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  width: 76,
                  height: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        widget.color,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 25,
                        height: 25,
                        child: Image.asset('assets/icons/up.png'),
                      ),
                      Container(
                        width: 45,
                        height: 35,
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                        decoration: BoxDecoration(
                          color: widget.color.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset('assets/icons/${widget.icon}.png'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
