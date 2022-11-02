import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learning/components/shapes/shapes.dart';

class ShapePage extends StatelessWidget {
  const ShapePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('形状'),
      ),
      body:  Column(
        children: [
          ClipPath(
            clipper: StarPath(),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                border: Border.all(color:Colors.black,width: 5.0,style: BorderStyle.solid)
              ),
              height: 100,
              width: 100,

            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipPath(
                  clipper: QuadraticBezierPath(),
                  child:Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  )
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 150,
                color: Colors.teal,
                child:const  Text('quadraticBezier  二次贝赛尔曲线',style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipPath(
                  clipper: CubicToPath(),
                  child:Container(
                    height: 100,
                    width: 100,
                    color: Colors.grey,
                  )
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 150,
                color: Colors.teal,
                child:const  Text('quadraticBezier  三次贝赛尔曲线',style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipPath(
                  clipper: AddPath(),
                  child:Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightGreen,
                  )
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 150,
                color: Colors.teal,
                child:const  Text('添加',style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
              )
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipPath(
                  clipper: HoldPath(),
                  child:Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                  )
              ),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: 150,
                color: Colors.teal,
                child:const  Text('圆角矩形',style: TextStyle(fontSize: 17,color: Colors.white,),textAlign: TextAlign.center,),
              )
            ],
          ),
        ],
      ),
    );
  }
}

