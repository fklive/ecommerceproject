import 'package:ecommerceproject/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInSuccessfullyPage extends StatefulWidget {
  @override
  _SignInSuccessfullyPageState createState() => _SignInSuccessfullyPageState();

}
class _SignInSuccessfullyPageState extends State<SignInSuccessfullyPage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            padding: const EdgeInsets.only(top: 200),
            child: Center(
              child:  Container(
                alignment: Alignment.topCenter,
                child: Icon(MdiIcons.partyPopper,size: 108,color: Colors.white,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child:  Container(
                child: Text("Kayıt Olduğunuz İçin Teşekkürler!",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child:  Container(
                child: Text("Kayıt işlemin başarı ile tamamlandı, aşağıdaki butona tıklayarak uygulamamıza giriş yapabilirsin.",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:430.0),
            child: Material(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.blue.withOpacity(0.8),
              elevation: 0.0,
              child: Container(
                child: MaterialButton(
                  onPressed: ()  {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  minWidth: MediaQuery.of(context).size.width,
                  child: Text(
                    "Hadi, Alışverişe Başlayalım!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}


