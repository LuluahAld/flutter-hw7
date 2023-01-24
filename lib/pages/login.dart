import 'package:flutter/material.dart';
import 'package:hw_7/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var buttonColor = Colors.white;
  var color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(28, 60, 28, 0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign in to Coinbase',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(width: 104),
                        Image.asset('images/logo.png', width: 40)
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            'Email',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            contentPadding: const EdgeInsets.all(20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text(
                            'Password',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintStyle: const TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            contentPadding: const EdgeInsets.all(20),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 71, 219),
                          ),
                        ),
                        SizedBox(width: 164),
                        Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Color.fromARGB(255, 2, 71, 219),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 82, 254),
                  borderRadius: BorderRadius.all(Radius.circular(54)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 16.0,
                    )
                  ]),
              width: 430,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(80, 40, 80, 100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.black,
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                  ),
                  onPressed: () {
                    if (color == Colors.black) {
                      setState(() {
                        color = Colors.white;
                        buttonColor = Colors.black;
                      });
                    } else {
                      setState(() {
                        color = Colors.black;
                        buttonColor = Colors.white;
                      });
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Continue',
                        style: TextStyle(
                          color: color,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Icon(
                        Icons.exit_to_app,
                        color: color,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
