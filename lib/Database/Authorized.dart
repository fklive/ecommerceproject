import 'package:ecommerceproject/Login.dart';
import 'package:ecommerceproject/UI/BottomNavigatorBar/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Authorized
{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Giriş Yap
  Future<void> handleSignInEmail(BuildContext context,String email, String password) async
  {
    try
    {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final FirebaseUser user = result.user;
      assert(user != null);
      assert(await user.getIdToken() != null);

      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));

    }catch(signUpError)
    {
      if(signUpError is PlatformException)
        {
          if(signUpError.code == 'ERROR_INVALID_EMAIL' ||
             signUpError.code == 'ERROR_WRONG_PASSWORD')
            {
              Fluttertoast.showToast
                (msg: "Geçersiz email/şifre.",
                  backgroundColor: Colors.deepPurple,
                  textColor: Colors.white,
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  fontSize: 16,
                );
              return null;
            }
          else if(signUpError.code == 'ERROR_USER_NOT_FOUND')
            {
              Fluttertoast.showToast
                (msg: "Bu maile ait bir kullanıcı yok, eğer kayıtlı değilseniz lütfen kaydolun.",
                backgroundColor: Colors.deepPurple,
                textColor: Colors.white,
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                fontSize: 16,
              );
              return null;
            }
        }

    }
  }
 //Çıkış Yap
  Future<void> handleSignOut(BuildContext context) async
  {

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    return _auth.signOut();
  }


}