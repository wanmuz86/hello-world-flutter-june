import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {

  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
              child: Column(
            children: [
              Text("Welcome to my app",
                  style: GoogleFonts.lato(textStyle: TextStyle(color:Colors.red, fontSize: 32))),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("This is left"),
                  Text("This is right")
                ],
              ),
              SizedBox(height: 10,),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/c/cc/Kuala_Lumpur_Skyline_at_dusk_1.jpg"),
              SizedBox(height: 10,),
              Image.asset("images/logo.png"),
              SizedBox(height: 10,),
              Text("I hope you like it", style: GoogleFonts.titanOne(textStyle: TextStyle(color: Colors.blue, fontSize: 20),)),
              SizedBox(height: 10,),
              Text("This is my first app"),
              SizedBox(height: 10,),
              TextField(
                controller: nameEditingController,
                decoration: InputDecoration(hintText: "What is your name?"),),
              SizedBox(height: 10,),
              TextField(
                controller: ageEditingController,
                decoration: InputDecoration(hintText: "How old are you?"),),
              SizedBox(height: 10,),
              TextButton(onPressed: (){
                Fluttertoast.showToast(
                    msg: "Hello ${nameEditingController.text}, "
                        "you are ${ageEditingController.text} years old.",
                    toastLength: Toast.LENGTH_LONG,
                );
              }, child: Text("Press me"))
            ],
          )),
        ),
      ),
    );
  }

}
