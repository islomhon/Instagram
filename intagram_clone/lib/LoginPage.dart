import 'package:flutter/material.dart';
import 'package:intagram_clone/HomePage.dart';
import 'package:intagram_clone/LoginPage2.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Column(
              children: [
                Container(
                  width: 150,
                  height: 50,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/instalogo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/avatar.jpg")),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Krypt0n_01",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => Loginpage2()));
                    },
                    child: Container(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6)),
                      height: 45,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Switch accounts",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Divider(
                  color: Colors.grey.shade400,
                ),
                SizedBox(
                  height: 3,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don`t have an account?",
                          style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Sing up",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("")
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
