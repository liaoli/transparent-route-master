import 'package:flutter/material.dart';

class GradientText extends StatefulWidget {
  @override
  _GradientTextState createState() => _GradientTextState();
}

class _GradientTextState extends State<GradientText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('渐变Text文字'),
      ),
      body: ListView(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: <Color>[Colors.green, Colors.red],
                tileMode: TileMode.mirror,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Center(
              child: Text(
                '从上到下渐变',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: <Color>[Colors.green, Colors.red],
                tileMode: TileMode.mirror,
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Center(
              child: Text(
                '从左到右渐变',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: <Color>[Colors.green, Colors.red],
                tileMode: TileMode.mirror,
                begin: Alignment.centerLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Center(
              child: Text(
                '从左到右渐变,带阴影',
                style: TextStyle(fontSize: 24, shadows: [
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
