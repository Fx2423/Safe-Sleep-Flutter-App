import 'package:flutter/material.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:safe_sleep/colors.dart';
import 'package:safe_sleep/dragger.dart';

class Drawers extends KFDrawerContent {
  Drawers({
    Key? key,
  });

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SafeArea(child: Draw()))),
      ],
    ));
  }
}
