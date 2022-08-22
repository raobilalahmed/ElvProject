import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRangeSlider extends StatefulWidget {
  const CustomRangeSlider({Key? key}) : super(key: key);

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {

  double _starValue = 0;
  double _endValue = 100;
  double minValue = 0.0;
  double maxValue = 100.0;

  final startController = TextEditingController();
  final endController = TextEditingController();

  @override
  void initState() {
    super.initState();
    startController.addListener(_setStartValue);
    endController.addListener(_setEndValue);
  }

  @override
  void dispose() {
    startController.dispose();
    endController.dispose();
    super.dispose();
  }

  _setStartValue() {
    if (double.parse(startController.text).roundToDouble() <=
        double.parse(endController.text).roundToDouble() &&
        double.parse(startController.text).roundToDouble() >= minValue &&
        double.parse(endController.text).roundToDouble() >= minValue &&
        double.parse(startController.text).roundToDouble() <= maxValue &&
        double.parse(endController.text).roundToDouble() <= maxValue) {
      setState(() {
        _starValue = double.parse(startController.text).roundToDouble();
      });
    }
  }

  _setEndValue() {
    if (double.parse(startController.text).roundToDouble() <=
        double.parse(endController.text).roundToDouble() &&
        double.parse(startController.text).roundToDouble() >= minValue &&
        double.parse(endController.text).roundToDouble() >= minValue &&
        double.parse(startController.text).roundToDouble() <= maxValue &&
        double.parse(endController.text).roundToDouble() <= maxValue) {
      setState(() {
        _endValue = double.parse(endController.text).roundToDouble();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(_starValue, _endValue),
      min: minValue,
      max: maxValue,
      activeColor: Colors.deepOrange,
      inactiveColor: Colors.deepOrangeAccent.withOpacity(0.2),
      onChanged: (values) {
        setState(() {
          _starValue = values.start.roundToDouble();
          _endValue = values.end.roundToDouble();
          startController.text =
              values.start.roundToDouble().toString();
          endController.text = values.end.roundToDouble().toString();
        });
      },
    );
  }
}














