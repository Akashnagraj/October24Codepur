import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 150.0,
                  backgroundImage: AssetImage("assets/images/login.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome, Sangeeth Aunty",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 10, bottom: 10),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Username",
                          hintText: "Sangeetha Venkatesh, the Great",
                          prefixIcon: Icon(Icons.verified_user),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 4.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "S2Y",
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 4.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ElevatedButton(onPressed: () {}, child: Text("Login"))
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
