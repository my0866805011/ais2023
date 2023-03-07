import 'package:ais2023/src/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login/login_bloc.dart';
import '../../models/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userNameCtl = TextEditingController();
  final TextEditingController _passwordCtl = TextEditingController();

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
        title: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            return Text("Login Page :${state.count}");
          },
        ),
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
                    BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return  Text(
                        "Login Result: ${state.isAuthened ? "Success" : "Error"}");
                    },
                  ),
                 
                  const SizedBox(height: 32,),
                  ..._buildButtons(),
                  Row(
                    children: [
                      //
                      //Text("Debug: ${context.read<LoginBloc>().state.count}"),
                      BlocBuilder<LoginBloc, LoginState>(
                        builder: (context, state) {
                          return Text("DebugX: ${state.count}");
                        },
                      ),
                      IconButton(
                        onPressed: () =>
                            context.read<LoginBloc>().add(LoginEventAdd()),
                        icon: const Icon(Icons.add),
                      ),

                      IconButton(
                        onPressed: () =>
                            context.read<LoginBloc>().add(LonginEventRemove()),
                        icon: const Icon(Icons.remove),
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

  void _buttomLogin() {
   // print("Login with  ${_userNameCtl.text},${_passwordCtl.text}");
   // Navigator.pushNamed(context, AppRoute.home);
    final user = User(
      username: _userNameCtl.text,
      password: _passwordCtl.text,
    );
    context.read<LoginBloc>().add(LonginEventLogin(user));

  }

  void _buttonResgister() {
    Navigator.pushNamed(context, AppRoute.register);
  }

  _buildTextFields() {
    return [
      TextField(
        controller: _userNameCtl,
        decoration: const InputDecoration(labelText: 'Username'),
      ),
      TextField(
        controller: _passwordCtl,
        decoration: const InputDecoration(labelText: 'Password'),
      ),
    ];
  }

  _buildButtons() {
    return [
      ElevatedButton(
          onPressed: () => _buttomLogin(), child: const Text('Login')),
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
