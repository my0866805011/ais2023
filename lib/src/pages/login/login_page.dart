import 'package:flutter/material.dart';

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
    _userNameCtl.text ='Admin';
    _passwordCtl.text ='1234';
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
          child: Card(
            child:Container(
              padding: const EdgeInsets.all(32),
              height: 320,           
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ..._buildTextFields(),
                  SizedBox(height: 32,),
                  ..._buildButtons(),
                ],
              ),   
            ),
          ),
        ),
      ),
    );  
  }
  
 void _userNameReset() {
    _userNameCtl.text="Admin";
    _passwordCtl.text='1234';
  }
  
 void _printUsername() {
 print("Login with  ${_userNameCtl.text},${_passwordCtl.text}");

    
  }
  _buildTextFields(){
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
    return[
        ElevatedButton(
          onPressed: ()=>_printUsername(),
           child: const Text('Login')
            ),
        SizedBox(height: 16,) ,   
        OutlinedButton(onPressed: ()=>_userNameReset(), 
           child: const Text('Reset'),)

    ];
  

  }
}
