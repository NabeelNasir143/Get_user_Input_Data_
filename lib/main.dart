import 'package:base/text_style.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatelessWidget {
  var emailTextController = TextEditingController();
  var passTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Base'),
        ),
        body: Center(
            child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailTextController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.people_alt_sharp),
                  hintText: 'Enter Your Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 40, 20, 193),
                      width: 2,
                    ),
                  ),
                ),
              ),
              Container(
                height: 12,
              ),
              TextField(
                controller: passTextController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  hintText: 'Enter Password',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 1, 11, 120),
                      width: 2,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  String uEmail = emailTextController.text.toString();
                  String pWord = passTextController.text.toString();
                  print("Email: $uEmail', Password: $pWord");
                },
                child: Text('Get Val'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
