import 'package:flutter/material.dart';
import 'login.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create New Account"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Easy and Quick",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Re-type Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Confirm"),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    minimumSize: Size(485, 50),
                    backgroundColor: Colors.blue,
                    primary: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
