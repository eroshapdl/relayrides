// import 'app_theme.dart';
import 'package:flutter/material.dart';

class RSV extends StatelessWidget {

  final AnimationController animationController;
  final Animation animation;
  final dynamic widget;
  final widthVal;
  final heightVal;

  const RSV(
      {Key key,
      this.animationController,
      this.animation, this.widget,this.widthVal:350.0,this.heightVal:80.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 12, left: 24, right: 24),
                child: Row(
                  children: <Widget>[
                    
                    InkWell(
                      highlightColor: Colors.transparent,
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: <Widget>[
                           Container(
                             width: widthVal,
                             height: heightVal,
                              child: widget,
                           ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
