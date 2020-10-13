import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class denemeLogin extends StatefulWidget {
  @override
  _denemeLoginState createState() => _denemeLoginState();
}

class _denemeLoginState extends State<denemeLogin> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deneme"),
        elevation: 0.1,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Giriş",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red.shade800,
              onPressed: dbdenAl,
            ),
          ],
        ),
      ),
    );
  }

  void dbdenAl() async {
    String mail = "deneme@gmail.com";
    String sifre = "123123123";
    var firebaseUser = await _firebaseAuth.createUserWithEmailAndPassword(email: mail, password: sifre).catchError((e) => debugPrint("HATAAA : "+e.toString()));

    if(firebaseUser.user != null)
      debugPrint(" UID : ${firebaseUser.user.uid}" "Mail : ${firebaseUser.user.email}");
  }
}
