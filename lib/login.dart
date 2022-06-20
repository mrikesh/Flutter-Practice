import 'package:flutter/material.dart';
import 'package:app2/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController inputController1 = new TextEditingController();
  TextEditingController inputController2 = new TextEditingController();
  String _text1 = '';
  String _text2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Text("Back"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 18),
                primary: Colors.white,
                backgroundColor: Colors.transparent,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   child:Text(
            //     "Hello",
            //     style: TextStyle(color: Colors.white)),
            //   decoration: BoxDecoration(color: Colors.indigo),
            //    ),
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("user123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("user@email.com"),
              trailing: Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "First Name", border: OutlineInputBorder()),
              controller: inputController1,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Last Name", border: OutlineInputBorder()),
              controller: inputController2,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _text1 = inputController1.text;
                  _text2 = inputController2.text;
                });
              },
              child: Text("Submit"),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                minimumSize: Size(150, 50),
                backgroundColor: Colors.blue,
                primary: Colors.white,
                textStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$_text1 $_text2',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
