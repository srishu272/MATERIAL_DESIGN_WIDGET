import 'package:flutter/material.dart';

//call this class in body of homepage to see the output for snackbar and dialog box

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: RaisedButton(
        child: Text(
          "Click Me",
          style: TextStyle(color: Colors.black),
        ),
        /* onPressed: (() => {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text("You pressed me"),
                duration: Duration(seconds: 2),
              ))
            }), */

        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    content: Text(
                      "Dialog Box is Working....",
                      style: TextStyle(fontSize: 25),
                    ),
                    title: Row(
                      children: [
                        Icon(
                          Icons.book_rounded,
                          color: Colors.deepPurple,
                        ),
                        Text(
                          "Dialog Box",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ));
        },
        color: Colors.blueGrey,
      )),
    );
  }
}
