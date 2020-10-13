import 'package:ecommerceproject/Database/Authorized.dart';
import 'package:ecommerceproject/SignInSuccessfullyPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'UI/BottomNavigatorBar/MyHomePage.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final dbRef = FirebaseDatabase.instance.reference().child("Users");
  final _formKey = GlobalKey<FormState>();
  //Form Controllers
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();

  //End Form Controllers

  bool isPasswordHidden = true;
  bool isPasswordComfirmedHidden = true;

  final _gendersList = ["Seçiniz", "Erkek", "Kadın"];
  List _agesList = [
    "Seçiniz",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
    "61",
    "62",
    "63",
    "64",
    "65",
    "65+",
  ];

  List<DropdownMenuItem<String>> _dropDownMenuGenderItems;
  List<DropdownMenuItem<String>> _dropDownMenuAgeItems;
  String _currentGender;
  String _currentAge;

  @override
  void initState() {
    _dropDownMenuAgeItems = getDropDownMenuAgeItems();
    _dropDownMenuGenderItems = getDropDownMenuGenderItems();
    _currentGender = _dropDownMenuGenderItems[0].value;
    _currentAge = _dropDownMenuAgeItems[0].value;
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
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: Form(
                    key: _formKey,
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                          child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                              child: TextFormField(
                                controller: _nameTextController,
                                keyboardType: TextInputType.text,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "İsim",
                                  icon: Icon(Icons.account_circle),
                                ),
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return "İsim alanı boş olamaz.";
                                  else
                                    return null;
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 10),
                          child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child:  Container(
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                                    child: Text(
                                      "Cinsiyet :",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  Container(
                                      padding:
                                      new EdgeInsets.fromLTRB(24, 0, 0, 0)),
                                  DropdownButton(
                                    value: _currentGender,
                                    items: _dropDownMenuGenderItems,
                                    onChanged: changedDropDownGenderItem,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                                    child: Text(
                                      "Yaş :",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                      padding:
                                      new EdgeInsets.fromLTRB(24, 0, 0, 0)),
                                  DropdownButton(
                                    value: _currentAge,
                                    items: _dropDownMenuAgeItems,
                                    onChanged: changedDropDownAgeItem,
                                  ),
                                ],
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
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
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
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                          child: Material(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white.withOpacity(0.8),
                            elevation: 0.0,
                            child: ListTile(
                              title: TextFormField(
                                controller: _confirmPasswordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: isPasswordComfirmedHidden,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: "Şifre Tekrarı",
                                  icon: Icon(Icons.lock),
                                ),
                                validator: (value) {
                                  if (value.trim().isEmpty)
                                    return "Şifre alanı boş olamaz.";
                                  else if(value.trim().length < 6)
                                    return "Şifreniz minimum 6 haneli olmalıdır.";
                                  else if(_passwordController.text != _confirmPasswordController.text)
                                    return "Girilen şifrelerin aynı olması gerekmektedir.";
                                  else
                                    return null;
                                },
                              ),
                              trailing: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
                                setState(() {
                                  if(isPasswordComfirmedHidden)
                                    isPasswordComfirmedHidden = false;
                                  else
                                    isPasswordComfirmedHidden = true;
                                });
                              }),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.blue.withOpacity(0.8),
                              elevation: 0.0,
                              child: MaterialButton(
                                onPressed: ()  async{
                                  if(checkMandatoryField())
                                  {
                                    handleSignUp(_emailTextController.text, _passwordController.text).then((onValue){
                                      SaveUser();
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignInSuccessfullyPage()));
                                    }).catchError((onError){
                                      Fluttertoast.showToast(
                                          msg: "Lütfen tüm alanları eksiksiz doldurunuz.",
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: Colors.deepPurple,
                                          fontSize: 16.0,
                                          textColor: Colors.white
                                      );
                                    });

                                  }
                                },
                                minWidth: MediaQuery.of(context).size.width,
                                child: Text(
                                  "Kayıt Ol",
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
                          child: InkWell(
                            onTap: ()
                            {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Zaten üye misin? Giriş yapmak için buraya tıkla.",
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
        ],
      ),
    );
  }

  List<DropdownMenuItem<String>> getDropDownMenuGenderItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String gender in _gendersList) {
      items.add(new DropdownMenuItem(value: gender, child: new Text(gender)));
    }
    return items;
  }

  void changedDropDownGenderItem(String selectedGender) {
    setState(() {
      _currentGender = selectedGender;
    });
  }

  List<DropdownMenuItem<String>> getDropDownMenuAgeItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String ages in _agesList) {
      items.add(new DropdownMenuItem(value: ages, child: new Text(ages)));
    }
    return items;
  }

  void changedDropDownAgeItem(String selectedAge)
  {
    setState(() {
      _currentAge = selectedAge;
    });
  }
  //Mail & Şifre İle Kullanıcı Oluştur
  Future<void> handleSignUp(String email, String password) async {

      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password).catchError((onError) {
        if (onError is PlatformException) {
          if (onError.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
            Fluttertoast.showToast
              (
              msg: "Bu maile ait bir kullanıcı zaten bulunmakta, eğer şifrenizi unuttuysanız lütfen şifremi unuttum bölümüne tıklayın.",
              backgroundColor: Colors.deepPurple,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              fontSize: 16,
            );
            _emailTextController.clear();
            return null;
          }
          else if (onError.code == '`ERROR_INVALID_EMAIL`') {
            Fluttertoast.showToast
              (msg: "Geçersiz e-mail. Lütfen başka bir e-mail girin.",
              backgroundColor: Colors.deepPurple,
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              fontSize: 16,
            );
            _emailTextController.clear();
            return null;
          }
        }

        return null;
      });
      FirebaseUser user = result.user;
    return user;
  }
  Future SaveUser() async
  {
    if(_formKey.currentState.validate())
      {
        //Bilgiler User Tablosuna Kaydedilir.
        dbRef.push().set({
          "Fullname" : _nameTextController.text,
          "Email" : _emailTextController.text,
          "Sifre" : _passwordController.text,
          "Yas" : _currentAge,
          "Cinsiyet" : _currentGender,
        }).then((_){
        debugPrint("SUCCESFULLY");
        }).catchError((onError){
          Fluttertoast.showToast(
              msg: "Kayıt esnasında bir hata oluştu , lütfen tekrar deneyiniz.",
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              backgroundColor: Colors.deepPurple,
              fontSize: 16.0,
              textColor: Colors.white
          );
        });

      }
    else
      {
        Fluttertoast.showToast(
            msg: "Lütfen tüm alanları eksiksiz doldurunuz.",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.deepPurple,
            fontSize: 16.0,
            textColor: Colors.white
        );
      }
  }

  bool checkMandatoryField()
  {
    if(_currentGender == _gendersList[0] || _currentAge == _agesList[0])
      {
        Fluttertoast.showToast
          (
            msg: "Lütfen Cinsiyet Ve Yaş Bilginizi Giriniz.",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.deepPurple,
            fontSize: 16.0,
            textColor: Colors.white
        );
        return false;
      }
      return true;
  }

}

