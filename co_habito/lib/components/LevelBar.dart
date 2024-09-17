import 'package:co_habito/AppColors.dart';
import 'package:flutter/material.dart';

class LevelBar extends StatefulWidget {
  double min = 0;
  double max = 10;
  int initalValue = 5;
  int divisions = 10;
  Color activeColor = AppColors.Charcoal;
  Color inactiveColor = Color.fromRGBO(227, 227, 227, 100);
  TextStyle textStyle = const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 16);
  double trackHeight = 8.0;
  double width = 450;


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
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0), 
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),  
                          tickMarkShape: SliderTickMarkShape.noTickMark,
                        ),
                        child: Slider(
                          value: _currentValue.toDouble(),
                          min: widget.min,
                          max: widget.max,
                          divisions: (widget.max - widget.min).toInt(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$_currentValue', style: widget.textStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
