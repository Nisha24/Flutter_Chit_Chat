import 'package:flutter/material.dart';
import 'package:flutter_chit_chat/widgets/widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarMain(context),
      ),
      body: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  TextEditingController usernameText = new TextEditingController();
  TextEditingController emailText = new TextEditingController();
  TextEditingController passwordText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 150),
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              decoration: textBoxStyle("Username"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailText,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              decoration: textBoxStyle("Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
                controller: passwordText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                decoration: textBoxStyle("Password")),
            SizedBox(
              height: 20,
            ),
            // TextButton(
            //   onPressed: () => debugPrint("Forgot"),
            //   child: Container(
            //     child: Text("Forgot Password ?"),
            //     alignment: Alignment.centerRight,
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: RaisedButton(
                onPressed: () => debugPrint("Sign Up"),
                splashColor: Colors.blue,
                color: Colors.white,
                child: Container(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 18),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: RaisedButton.icon(
                  onPressed: () {
                    print('Sign Up with google');
                  },
                  label: Text(
                    'Sign Up with Google',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  icon: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have a account ? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  FlatButton(
                    onPressed: () => debugPrint("Login Now"),
                    child: Text(
                      "Login Now",
                      style: TextStyle(fontSize: 16),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
