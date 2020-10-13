import 'package:ecommerceproject/Database/Authorized.dart';
import 'package:ecommerceproject/Register.dart';
import 'package:ecommerceproject/UI/BottomNavigatorBar/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Authorized authorized = new Authorized();
  Future<FirebaseUser> loggedInUser;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool loading = false;
  bool isPasswordHidden = true;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'images/backround.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'images/ecommerceloginlogo.png',
              width: 280.0,
              height: 240.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: Form(
                    key: _formKey,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                              child: TextFormField(
                                controller: _emailTextController,
                               keyboardType: TextInputType.emailAddress,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  icon: Icon(Icons.email),
                                ),
                                validator: (value) {
                                  if (value.trim().isEmpty) {
                                    Pattern pattern =
                                        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                    RegExp regex = new RegExp(pattern);
                                    if (!regex.hasMatch(value))
                                      return "Lütfen email adresinizi doğru bir şekilde girin";
                                    else
                                      return null;
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                          child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: ListTile(
                              title: TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: isPasswordHidden,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "Şifre",
                                  icon: Icon(Icons.lock,),
                                ),
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return "Şifre alanı boş olamaz.";
                                  else if(value.trim().length < 6)
                                    return "Şifreniz minimum 6 haneli olmalıdır.";
                                  else
                                    return null;
                                },
                              ),
                              trailing: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                                setState(() {
                                  if(isPasswordHidden)
                                    isPasswordHidden = false;
                                  else
                                    isPasswordHidden = true;
                                });
                              }),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.deepPurple.withOpacity(0.8),
                              elevation: 0.0,
                              child: MaterialButton(
                                onPressed: () {
                                  authorized.handleSignInEmail(context,_emailTextController.text.trim(), _passwordController.text);

                                },
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Giriş Yap",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Şifremi Unuttum",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                            },
                            child: Text(
                              "Henüz üyeliğin yok mu? Üye olmak için buraya tıkla.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Visibility(
            visible: loading ?? true,
            child: Center(
              child: Container(
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.9),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
