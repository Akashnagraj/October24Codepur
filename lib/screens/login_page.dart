import 'package:codepur_hindi/utils/myroutes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isTapped = false;

  void changePage() async {
    await Future.delayed((Duration(seconds: 2)));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    maxRadius: 150.0,
                    backgroundImage: AssetImage("assets/images/login.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome $name",
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
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "S2Y",
                            prefixIcon: Icon(
                              Icons.password,
                            ),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 4.0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              isTapped = !isTapped;
                              changePage();
                            });
                          },
                          child: AnimatedContainer(
                            height: isTapped ? 40 : 40,
                            width: isTapped ? 40 : 120,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: isTapped
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              color: Colors.pink,
                            ),
                            duration: Duration(seconds: 2),
                            child: isTapped
                                ? Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        )

                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //   },
                        //   child: Text("Login"),
                        //   style: TextButton.styleFrom(fixedSize: Size(120, 40)),
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
