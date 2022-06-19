import 'package:flutter/material.dart';
import 'package:app2/home.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                hintText: "First Name",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Last Name",
                border: OutlineInputBorder()
              ),
            ),
          ],
        ),
      ),
    );
  }
}
