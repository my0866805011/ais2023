import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override

  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _userNameCtl = TextEditingController();

  @override
  void initState() {
      super.initState();
    _userNameCtl.text ='Admin';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 9, 116, 179).withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _userNameCtl,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              ElevatedButton(onPressed: ()=>
                print('Login'),
               child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
