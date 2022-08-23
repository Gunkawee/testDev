import 'package:flutter/material.dart';

class adduser extends StatefulWidget {
  const adduser({Key? key}) : super(key: key);

  @override
  State<adduser> createState() => _adduserState();
}

class _adduserState extends State<adduser> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 251, 251),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 95, 116),
        title: const Center(
          child: Text(
            "Add User",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 200, right: 200, top: 30),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                hintText: 'Enter Name'),

                            maxLength: 50,
                            // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                            // keyboardType: TextInputType.number,
                          )
                        ],
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
