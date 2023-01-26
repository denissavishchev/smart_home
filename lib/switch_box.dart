import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

class SwitchBox extends StatefulWidget {
  final Color color;
  final String icon;

  SwitchBox({
    Key? key,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  State<SwitchBox> createState() => _SwitchBoxState();
}

class _SwitchBoxState extends State<SwitchBox> {
  bool isSwitched = true;

  void _isSwitched() {
    setState(() {
      isSwitched = !isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isSwitched,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedCrossFade(
              firstChild: Container(
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
                        end: Alignment.bottomCenter)),
              ),
              secondChild: Container(
                width: 80,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.white.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              crossFadeState: isSwitched
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500)),
          Container(
            clipBehavior: Clip.hardEdge,
            width: 78,
            height: 148,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: kLightBlack),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 45,
                  height: 1480,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedOpacity(
                        curve: Curves.easeInOutQuart,
                        opacity: isSwitched ? 1 : 0,
                        duration: const Duration(milliseconds: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              'ON',
                              style: TextStyle(
                                  fontFamily: 'good',
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            Container(
                              width: 30,
                              height: 3,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                      AnimatedOpacity(
                        curve: Curves.easeInOutQuart,
                        opacity: isSwitched ? 0 : 1,
                        duration: const Duration(milliseconds: 500),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 30,
                              height: 3,
                              color: kRed,
                            ),
                            const Text(
                              'Off',
                              style: TextStyle(
                                  fontFamily: 'good',
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.easeInOutBack,
                    top: isSwitched ? 42 : -42,
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedCrossFade(
                      firstChild: Container(
                        margin: const EdgeInsets.symmetric(vertical: 1),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        width: 76,
                        height: 146,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  widget.color,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                            borderRadius: BorderRadius.circular(15)),
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                color: widget.color.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                  'assets/icons/${widget.icon}.png'),
                            ),
                            RotatedBox(
                              quarterTurns: 2,
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: Image.asset('assets/icons/up.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      secondChild: Container(
                        margin: const EdgeInsets.symmetric(vertical: 1),
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        width: 76,
                        height: 146,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  widget.color,
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter),
                            borderRadius: BorderRadius.circular(15)),
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              decoration: BoxDecoration(
                                color: widget.color.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                  'assets/icons/${widget.icon}.png'),
                            ),
                            RotatedBox(
                              quarterTurns: 2,
                              child: SizedBox(
                                width: 25,
                                height: 25,
                                child: Image.asset('assets/icons/up.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      crossFadeState: isSwitched
                      ? CrossFadeState.showFirst
                          : CrossFadeState.showSecond,
                      duration: const Duration(milliseconds: 500),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
