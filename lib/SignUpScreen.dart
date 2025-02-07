import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';
class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Successfully Signed Up!')),

      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );



    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A1B91), Color(0xFFD500F9)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTll94eiliojK66rhXvqXVo5cV9G_CWuvQUAA&s"),
                backgroundColor: Colors.transparent,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())),
                    child: Text("Existing", style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("New User", style: TextStyle(color: Colors.white)),
                  ),],),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(labelText: 'Username', icon: Icon(Icons.person)),
                        validator: (value) => value!.isEmpty ? 'Enter Username' : null,
                      ),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(labelText: 'Email', icon: Icon(Icons.email)),
                        validator: (value) => value!.isEmpty ? 'Enter Email' : null,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(labelText: 'Password', icon: Icon(Icons.lock)),
                        obscureText: true,
                        validator: (value) => value!.length < 6 ? 'Password too short' : null,
                      ),
                      TextFormField(
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(labelText: 'Confirm Password', icon: Icon(Icons.lock)),
                        obscureText: true,
                        validator: (value) => value != _passwordController.text ? 'Passwords do not match' : null,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(onPressed: _signUp, child: Text("Sign Up")),
                    ],),),),],),),),);}}
