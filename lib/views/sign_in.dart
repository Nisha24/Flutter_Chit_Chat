import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chit_chat/services/auth.dart';
import 'package:flutter_chit_chat/views/sign_up.dart';
import 'package:flutter_chit_chat/widgets/widget.dart';

class Sign_InPage extends StatefulWidget {

  @override
  _Sign_InPageState createState() => _Sign_InPageState();
}

class _Sign_InPageState extends State<Sign_InPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: appBarMain(context),
      ),
      body: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
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
            TextButton(
              onPressed: () => debugPrint("Forgot"),
              child: Container(
                child: Text("Forgot Password ?"),
                alignment: Alignment.centerRight,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: RaisedButton(
                onPressed: (){
                  AuthMethods().signIn(emailText.text.trim(), passwordText.text.trim()).then((value) {
                    if(value == "Welcome"){
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SignUpPage()), (route) => false);
                    }else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Hi")));
                    }
                  });
                },
                splashColor: Colors.blue,
                color: Colors.white,
                child: Container(
                  child: Text(
                    "Sign In",
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
                    print('Sign In with google');
                  },
                  label: Text(
                    'Sign In with Google',
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
                    "Don't have account ? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    },
                    child: Text(
                      "Register Now",
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
