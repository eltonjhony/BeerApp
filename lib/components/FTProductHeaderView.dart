import 'package:flutter/material.dart';
import 'package:my_app/delegates/SliverAppBarDelegate.dart';

class FTProductHeaderView extends StatefulWidget {
  @override
  createState() => _FTProductHeaderViewState();
}

class _FTProductHeaderViewState extends State<FTProductHeaderView> {
  
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: false,
      delegate: SliverAppBarDelegate(
          minHeight: 60.0,
          maxHeight: 200.0,
          child: Container(
              child: Image.asset(
            'assets/banner.jpg',
            fit: BoxFit.cover,
          ))),
    );
  }
}
