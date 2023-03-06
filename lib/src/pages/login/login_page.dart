import 'package:ais2023/src/pages/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userNameCtl = TextEditingController();
  final TextEditingController _passwordCtl = TextEditingController();
  int count = 0;

  @override
  void initState() {
    super.initState();
    _userNameCtl.text = 'Admin';
    _passwordCtl.text = '1234';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 9, 116, 179).withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(32),
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ..._buildTextFields(),
                  const SizedBox(
                    height: 32,
                  ),
                  ..._buildButtons(),
                  Row(
                    children: [
                      Text("Debug: $count"),
                      IconButton(
                        onPressed: () {
                          count = count + 1;
                          setState(() {});
                        },
                        icon: Icon(Icons.add),
                      ),
                      IconButton(onPressed: () {
                        count = count-1;
                        setState(() {
                          
                        });
                      },
                       icon: Icon(Icons.remove),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _userNameReset() {
    _userNameCtl.text = "Admin";
    _passwordCtl.text = '1234';
  }

  void _printUsername() {
    print("Login with  ${_userNameCtl.text},${_passwordCtl.text}");
    Navigator.pushNamed(context, AppRoute.home);
  }

  void _buttonResgister() {
    Navigator.pushNamed(context, AppRoute.register);
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _userNameCtl,
        decoration: InputDecoration(labelText: 'Username'),
      ),
      TextField(
        controller: _passwordCtl,
        decoration: InputDecoration(labelText: 'Password'),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
          onPressed: () => _printUsername(), child: const Text('Login')),
      OutlinedButton(
        onPressed: () => _buttonResgister(),
        child: const Text('Register'),
      ),
      OutlinedButton(
        onPressed: () => _userNameReset(),
        child: const Text('Reset'),
      ),
    ];
  }
}
