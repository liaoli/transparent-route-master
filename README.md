
#  透明路由页面和圆角bottomSheet 弹框实现


## 1.透明路由页面
## 2.圆角透明bottom sheet
## 3.渐变文字
```dart
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
          ) 
```