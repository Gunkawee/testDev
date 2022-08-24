import 'package:flutter/material.dart';

class adduser extends StatefulWidget {
  const adduser({Key? key}) : super(key: key);

  @override
  State<adduser> createState() => _adduserState();
}

class _adduserState extends State<adduser> {
  TextEditingController Firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController citizenid = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 251, 251),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 18, 95, 116),
        title: const Center(
          child: Text(
            "กรอกข้อมูลส่วนบุคคล",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 30),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    hintText: "Your Name",
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  controller: Firstname,
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.people),
                    hintText: "Your Lastname",
                    labelText: "Lastname",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  controller: lastname,
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    hintText: "Your PhoneNumber",
                    labelText: "Phone Number.",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.done,
                  controller: lastname,
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    hintText: "Your Email",
                    labelText: "E-Mail",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  controller: email,
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.card_travel),
                    hintText: "Your ID",
                    labelText: "CitizenID",
                    labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  controller: citizenid,
                ),
                Container(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 50),
                        textStyle: const TextStyle(fontSize: 15)),
                    child: Text('Add User'),
                    onPressed: () {
                      setState(() {});
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
