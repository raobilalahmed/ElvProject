

import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

class myToggleButton extends StatefulWidget {
  const myToggleButton({Key? key}) : super(key: key);

  @override
  State<myToggleButton> createState() => _myToggleButtonState();
}

class _myToggleButtonState extends State<myToggleButton> {
  bool isToggle=true;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
        height: 18,
        width: 34,
        padding: 4,
        toggleSize: 12,
        value: isToggle,
        onToggle: (value){
          setState(() {
            isToggle=value;
          });
        });
  }
}
