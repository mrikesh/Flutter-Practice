import 'package:flutter/material.dart';
import 'login.dart';
import 'create_account.dart';
import 'forget_password.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Application",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.network(
                  "https://media.gettyimages.com/vectors/welcome-banner-speech-bubble-label-ribbon-template-vector-stock-vector-id1292561966?s=612x612",
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email", border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("Login"),
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
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()),
                          );
                        },
                        child: Text("Create Account"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPassword()),
                          );
                        },
                        child: Text("Forget Password?"),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(16.0),
                          textStyle: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
