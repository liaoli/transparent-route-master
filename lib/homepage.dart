import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modalbottomsheet_app/transparent_page.dart';

import './components/searchbar.dart';
import './components/modal_trigger.dart';
import 'gradient_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 35),
        children: <Widget>[
          SizedBox(height: 50),
          SearchBar(),
          SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            height: 40,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    PageRouteBuilder(
                        opaque:false,
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return TransparentPage();
                        }
                    ),);
              },
              child: Text(
                '点我跳转到透明页面',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                    opaque:false,
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return GradientText();
                    }
                ),);
            },
            child:  ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: <Color>[Colors.purple, Colors.red],
                  tileMode: TileMode.mirror,
                  begin: Alignment.topCenter,// 控制渐变开始的方向
                  end: Alignment.bottomCenter,// 控制渐变结束的方向
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcATop,
              child: Center(
                child: Text(
                  '我是渐变文字',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height - 320,
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.width - 70),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/john_wick.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(height: 30),
          Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: ModalTrigger(),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
