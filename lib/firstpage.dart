import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'adduser.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.tealAccent.shade400,
          title: const Center(
            child: Text('Join Me',
                style: TextStyle(color: Colors.black, fontSize: 20)),
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Center(
                  child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 60),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    )),
                icon: const Icon(Icons.add),
                label: const Text('Add User'),
                onPressed: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) {
                    return adduser();
                  }));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
