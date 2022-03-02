import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
  
  Widget login() {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 padding: EdgeInsets.fromLTRB(0, 250, 0, 0),
                 child: FlutterLogo()
                ),
              ]
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 50, 40, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "Email",
                ),
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  hintText: "Password",
                ),
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Log In"),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
            )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: TextButton(
                onPressed: () {},
                child: Text("Forgot Password?"),
              ),
            )
          ],
        ),
      ),
    );
  }
}





