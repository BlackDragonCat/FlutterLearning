import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/components/SimpleAlert.dart';

class DialogsPage extends StatefulWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  State<DialogsPage> createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  ScrollController iosBottomActionScrollController = ScrollController();
  ScrollController iosBottomMessageScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('弹窗'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: FlatButton(
              height: 50.0,
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  _iosBottomSheetDialog(context);
                },
                child: const Text('IOS底部弹窗')
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: FlatButton(
                height: 50.0,
                color: Colors.deepOrangeAccent,
                onPressed: (){
                  _iosCenterAlertDialog(context);
                },
                child: const Text('IOS中部弹窗')
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20.0),
                child:  PopupMenuButton(
                  child: const Text('弹窗'),
                  offset: const Offset(1,0),
                  itemBuilder:(context){
                    return const  [
                      PopupMenuItem(child: Text('123')),
                      PopupMenuItem(child: Text('123')),
                      PopupMenuItem(child: Text('123')),
                      PopupMenuItem(child: Text('123')),
                    ];
                  },
                )

          ),


        ],
      ),
    );
  }
  _iosBottomSheetDialog(BuildContext context){
    showCupertinoModalPopup(
        context: context,
        builder: (context){
          return CupertinoActionSheet(
              title: const Text('IOS底部弹窗',style: TextStyle(fontSize: 20),),
              message: const Text('IOS这是底部弹窗'),
              actionScrollController: iosBottomActionScrollController,
              messageScrollController:iosBottomMessageScrollController,
              actions:[
                CupertinoActionSheetAction(
                    onPressed: (){
                      showtoast('选中第一项');
                    },
                    child:const Text('选项一')
                ),
                CupertinoActionSheetAction(
                    onPressed: (){
                      showtoast('选中第二项');
                    },
                    child:const Text('选项二')
                ),
              ],
              cancelButton: TextButton(
                  child: const Text('取消',style: TextStyle(fontSize: 20),),
                  onPressed: (){
                    Navigator.pop(context);
                  }
              ),
          );
        }
    );
  }

  _iosCenterAlertDialog(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: const Text('ios中部弹窗'),
          content: const Text('这是ios风格的中部弹窗'),
          actions: [
            CupertinoDialogAction(
              onPressed: (){
                showtoast('确认');
                Navigator.pop(context);
              },
              child: const Text('确认'),
            ),
            CupertinoDialogAction(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text('取消'),
            ),
          ],
        );
      }
    );
  }
}


