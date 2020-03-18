import 'package:flutter/material.dart';

// My Custom Transition
class RotatingTransition extends StatelessWidget {
  RotatingTransition({
    // Give the animation a better fitting name - we're animating the angle of rotation.
    @required this.angle,
    @required this.child,
  });

  final Widget child;
  final Animation<double> angle;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: angle,
      // This child will be pre-built by the AnimatedBuilder for performance optimizations
      // since it won't be rebuilt on every "animation tick".
      child: child,
      builder: (context, child) {
        return Transform.rotate(
          angle: angle.value,
          child: child,
        );
      },
    );
  }
}

class ResocoderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Image.asset(
        'assets/resocoder.png',
      ),
    );
  }
}
