import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Step> my_steps = [
    Step(title: Text("1st Step"), content: Text("Some statements - 1")),
    Step(title: Text("2nd Step"), content: Text("Some statements - 2")),
    Step(title: Text("3rd Step"), content: Text("Some statements - 3"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets"),
        ),
        body: Container(
          child: Stepper(steps: my_steps),
        ));
  }
}
