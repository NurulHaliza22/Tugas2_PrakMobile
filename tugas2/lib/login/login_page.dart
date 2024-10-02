import 'package:flutter/material.dart';
import 'package:tugas2/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logo(),
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Image.asset(
        'asset/sociolla.jpeg',
        width: 200.0,
        height: 200.0,
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          username = value;
        },
        decoration: InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess) ? const Color.fromARGB(255, 241, 123, 123) : Colors.red),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color:  Color.fromARGB(255, 241, 123, 123)),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          password = value;
        },
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Color.fromARGB(255, 241, 123, 123)),
            
          ),
        ),
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (isLoginSuccess) ? const Color.fromARGB(255, 241, 123, 123) : const Color.fromARGB(255, 241, 123, 123), // Button background color
          foregroundColor: Colors.white, // Set text color to white
        ),
        onPressed: () {
          String text = "";
          if (username == "liza" && password == "123") {
            setState(() {
              text = "Login Success"; 
              isLoginSuccess = true;
            });
            Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (context) {
                return HomePage(username: username);
              }));
          } else {
            setState(() {
              text = "Login Failed";
              isLoginSuccess = false;
            });
          }
          SnackBar snackBar = SnackBar(content: Text(text));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, 
        child: const Text('Login'), // Button text
      ),
    );
  }
}
