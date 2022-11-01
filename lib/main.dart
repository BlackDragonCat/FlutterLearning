import 'package:flutter/material.dart';
import 'package:flutter_learning/pages/DialogsPage.dart';
import 'package:flutter_learning/pages/FormPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home:const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0
          ),
          padding: const EdgeInsets.all(20.0),
          physics: const NeverScrollableScrollPhysics(),
          children:  [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)
              ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FormPage()));
                },
                child:const Text('Form',style: TextStyle(color: Colors.white,fontSize: 18),)
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)
                ),
                onPressed: () {
                  setState(() {
                  });
                },
                child:const Text('reload',style: TextStyle(color: Colors.white,fontSize: 18),)
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)
              ),
              child:const Text('Dialogs',style: TextStyle(color: Colors.white,fontSize: 18),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DialogsPage()));
              },
            )
          ],
        ),

    );
  }
}
