import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class FTButton extends StatefulWidget {
  @override createState() => _FTButtonState();
}

class _FTButtonState extends State<FTButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: PlatformButton(
        onPressed: () {},
        child: Text('Add product'),
      ),
    );
  }
}
