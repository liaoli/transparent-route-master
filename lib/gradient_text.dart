import 'package:flutter/material.dart';

class GradientText extends StatefulWidget {
  @override
  _GradientTextState createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('渐变Text文字'),),
      body: ListView(children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: <Color>[Colors.purple, Colors.red],
              tileMode: TileMode.mirror,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: Center(
            child: Text(
              '老孟，一枚有态度的程序员',
              style: TextStyle(fontSize: 24),
            ),
          ),
        )
    ],)
      ,);
  }
}
