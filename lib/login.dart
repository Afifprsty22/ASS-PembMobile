import 'dart:html';
import 'package:flutter/material.dart';
import 'package:per14/list.dart';
import 'package:per14/style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyFrom(),
    );
  }
}

class MyFrom extends StatelessWidget {
  const MyFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: AlignmentDirectional.centerStart,
              margin: EdgeInsets.only(left: 22, bottom: 19),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(45, 45),
                    maximumSize: const Size(45, 45),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Center(
                child: Image.asset(
                  'lg.png',
                  width: 195,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                style: Login,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  labelText: 'Username',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                obscureText: true,
                style: Login,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 12),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password",
                    style: Login,
                  )),
            ),
            Padding(
              child: Container(
                margin: EdgeInsets.only(bottom: 30, top: 20),
                width: 600,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TampilDataApi();
                    }));
                  },
                  child: Text(
                    "Login",
                    style: LoginText,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)),
                      primary: Color.fromRGBO(30, 35, 44, 1)),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              Text(
                'Or Login with',
                style: Login,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 104,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'fb.png',
                              width: 30,
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                        padding: EdgeInsets.all(5)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 104,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'gl.png',
                              width: 30,
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                        padding: EdgeInsets.all(5)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          width: 104,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Image.asset(
                              'ap.png',
                              width: 30,
                            ),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                        padding: EdgeInsets.all(5)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                        child: Container(
                          child: Text(
                            "Don't have an account",
                            style: Login1,
                          ),
                        ),
                        padding: EdgeInsets.only(top: 70)),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        child: Container(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Register Now",
                                style: Register,
                              )),
                        ),
                        padding: EdgeInsets.only(top: 70)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
