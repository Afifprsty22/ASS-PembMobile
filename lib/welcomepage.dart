import 'package:flutter/material.dart';
import 'package:per14/login.dart';
import 'package:per14/register.dart';
import 'package:per14/style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('ph.jpg'),
            Container(
                padding: EdgeInsets.only(right: 22, left: 22),
                height: 56,
                margin: EdgeInsets.only(bottom: 15, top: 29),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    'Login',
                    style: LoginText,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      primary: Color.fromRGBO(30, 35, 44, 1)),
                )),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }));
                },
                child: Text(
                  'Register',
                  style: RegisterText,
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(color: Color.fromRGBO(30, 35, 44, 1))),
              ),
            ),
            TextButton(onPressed: () {}, child: Text('Login as guest'))
          ],
        ),
      ),
    );
  }
}
