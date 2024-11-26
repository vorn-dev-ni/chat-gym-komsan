import 'package:demo/common/widget/button_animated.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen>
    with SingleTickerProviderStateMixin {
  double _width = 100;
  Color _color = Colors.blue;
  double _height = 100;
  late Tween<double> _tweenOpacity;
  late AnimationController _animationController;
  late AnimationController _animationButtonController;
  late Animation<Offset> _offset;

  late Animation<double> _buttonScale;

  late Animation<double> _scaleAnmation;
  @override
  void initState() {
    // TODO: implement initState

    _tweenOpacity = Tween(begin: 0, end: 1);

    _animationController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 2000),
        animationBehavior: AnimationBehavior.normal);

    _offset = TweenSequence([
      TweenSequenceItem(
          tween: Tween(begin: Offset(-1, 0), end: Offset(4, 0))
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 50.0),
    ]).animate(_animationController);

    _scaleAnmation = TweenSequence<double>(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 2)
              .chain(CurveTween(curve: Curves.ease)),
          weight: 40.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 2, end: 1)
              .chain(CurveTween(curve: Curves.ease)),
          weight: 40.0,
        ),
      ],
    ).animate(_animationController);

    _animationController.repeat();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.stop();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextFadeInBuilder()
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return SlideTransition(
                position: _offset,
                child: ScaleTransition(
                  scale: _scaleAnmation,
                  child: child,
                ),
              );
            },
            child: const Text(
              'My name is vorn',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Center(child: AnimatedButtonScale())
        ],
      )),
    );
  }

  TweenAnimationBuilder<double> TextFadeInBuilder() {
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 1000),
      tween: _tweenOpacity,
      curve: Curves.easeIn,
      child: const Text(
        'Vorn',
        style: TextStyle(fontSize: 32),
      ),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: value * 15),
              child: child),
        );
      },
    );
  }

  Column AnimatedColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 5),
          width: _width,
          height: _height,
          color: _color,
        ),
        ElevatedButton(
            onPressed: () => {
                  setState(() {
                    _width = 200;
                    _height = 400;
                    _color = Colors.amberAccent;
                  })
                },
            child: Text('Start'))
      ],
    );
  }
}
