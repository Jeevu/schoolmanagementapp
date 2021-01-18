import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = new TextEditingController();
  TextEditingController _passwordcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
        color: Colors.grey[50],
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            
                        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.lightBlue[900]),
                ),
                Container(
                  child: Form(
                    key: _formkey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailcontroller,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.mail_outline_rounded,
                                color: Colors.lightBlue[900],
                              ),
                              labelText: 'Email',
                              hintText: 'Email'),
                          validator: validatemail,
                        ),
                        TextFormField(
                          controller: _passwordcontroller,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.lightBlue[900],
                              ),
                              labelText: 'Password',
                              hintText: 'Password'),
                          validator: validatepassword,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  child: Checkbox(value: false, onChanged: null),
                                ),
                                Text('Remember me'),
                              ],
                            ),
                            GestureDetector(
                              child: Text('Forget Password?'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(top: 60),
            child: RaisedButton(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              color: Colors.lightBlue[900],
              onPressed: () {
                _formkey.currentState.validate();
                // if (_formkey.currentState.validate() == true) {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => ()));
                // }
              },
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 40),
                title: Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.lightBlue[900],
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

String validatemail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty) {
    return "Email Required";
  } else if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}

String validatepassword(String value) {
  if (value.isEmpty) {
    return 'Password Required';
  }
  return null;
}