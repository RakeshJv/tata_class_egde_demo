import 'package:demo/util/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class HeaderInner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.0)),
              color: COLORS.blueLight,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset("assets/images/blob_2.png",
                      width: 352,
                      height: 343,
                      color: COLORS.blueDark),
                  top: -100,
                  right: -130,
                ),
                Positioned(
                  child: Image.asset("assets/images/blob_1.png",
                      width: 302,
                      height: 343,
                      color: COLORS.blueMain),
                  top: 20,
                  left: -100,
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(
            child: Container(),
            flex: 1
        )
      ],
    );
  }
}
