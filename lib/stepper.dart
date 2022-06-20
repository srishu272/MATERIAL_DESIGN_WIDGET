import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int current_step = 0;
  List<Step> my_steps = [
    Step(title: Text("1st Step"), content: Text("Some statements - 1")),
    Step(title: Text("2nd Step"), content: Text("Some statements - 2")),
    Step(title: Text("3rd Step"), content: Text("Some statements - 3")),
    Step(title: Text("4th Step"), content: Text("Some statements - 4"))
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stepper(
        steps: my_steps,
        currentStep: this.current_step,
        type: StepperType.vertical,
      ),
    );
  }
}
