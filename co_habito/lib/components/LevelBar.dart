import 'package:flutter/material.dart';
import 'package:co_habito/AppColors.dart';

class LevelBar extends StatefulWidget {
  final double min = 0;
  final double max = 10;
  final int initalValue = 5;
  final int divisions = 10;
  final Color activeColor = AppColors.Charcoal;
  final Color inactiveColor = const Color.fromRGBO(227, 227, 227, 100);
  final TextStyle textStyle = const TextStyle(
      fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16);
  final double trackHeight = 8.0;
  final double width = 450;

  @override
  _LevelBarState createState() => _LevelBarState();
}

class _LevelBarState extends State<LevelBar> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initalValue;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: widget.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SliderTheme(
                        data: SliderThemeData(
                          trackHeight: widget.trackHeight,
                          activeTrackColor: widget.activeColor,
                          inactiveTrackColor: widget.inactiveColor,
                          thumbColor: AppColors.Carolina_Blue,
                          overlayColor: widget.activeColor.withOpacity(0.2),
                          valueIndicatorColor: AppColors.Carolina_Blue,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
                          tickMarkShape: SliderTickMarkShape.noTickMark,
                          valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                          valueIndicatorTextStyle: widget.textStyle,
                        ),
                        child: Slider(
                          value: _currentValue.toDouble(),
                          min: widget.min,
                          max: widget.max,
                          divisions: (widget.max - widget.min).toInt(),
                          label: _currentValue.toString(),
                          onChanged: (value) {
                            setState(() {
                              _currentValue = value.toInt();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: -1,
                  bottom: 11,
                  child: Text('0', style: widget.textStyle),
                ),
                Positioned(
                  right: -8,
                  bottom: 10,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text('10', style: widget.textStyle),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}