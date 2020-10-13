import 'package:ecommerceproject/Products/ProductDetail.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsMavi extends StatefulWidget {
  @override
  _ProductsMaviState createState() => _ProductsMaviState();
}

class _ProductsMaviState extends State<ProductsMavi> {
  final dbRef = FirebaseDatabase.instance.reference().child("Products");
  var urun_listesi = [
    {
      "urun_adi": "Ada Vintage Jean Pantolon",
      "urun_resmi": "images/products/mvwj1.JPG",
      "urun_eskifiyat": 199.99,
      "urun_yenifiyat": 169.99,
    },
    {
      "urun_adi": "Ada Yırtıklı Mavi Jean Pantolon",
      "urun_resmi": "images/products/mvwj2.JPG",
      "urun_eskifiyat": 189.99,
      "urun_yenifiyat": 143.99,
    },
    {
      "urun_adi": "Erkek Açık Vintage Mavi Jean",
      "urun_resmi": "images/products/mvm1.jpg",
      "urun_eskifiyat": 189.99,
      "urun_yenifiyat": 155.99,
    },
    {
      "urun_adi": "Düğme Detaylı Beyaz Jean Pantolon",
      "urun_resmi": "images/products/mvwj3.JPG",
      "urun_eskifiyat": 199.99,
      "urun_yenifiyat": 189.99,
    },
    {
      "urun_adi": "James Mavi Black Jean Pantolon",
      "urun_resmi": "images/products/mvm2.JPG",
      "urun_eskifiyat": 199.99,
      "urun_yenifiyat": 199.99,
    },
    {
      "urun_adi": "Mykonos Gold Yırtıklı Jean Pantolon",
      "urun_resmi": "images/products/mvwj4.JPG",
      "urun_eskifiyat": 189.99,
      "urun_yenifiyat": 151.99,
    },
    {
      "urun_adi": "Ada Rome Gri Yırtıklı Jean Pantolon",
      "urun_resmi": "images/products/mvwj5.JPG",
      "urun_eskifiyat": 179.99,
      "urun_yenifiyat": 143.99,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: urun_listesi.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height - 70),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Single_Product(
            prod_name: urun_listesi[index]['urun_adi'],
            prod_image: urun_listesi[index]['urun_resmi'],
            prod_oldprice: urun_listesi[index]['urun_eskifiyat'],
            prod_newprice: urun_listesi[index]['urun_yenifiyat'],
          );
        });
  }
}

class Single_Product extends StatelessWidget {
  final prod_name;
  final prod_image;
  final prod_oldprice;
  final prod_newprice;

  const Single_Product(
      {this.prod_name,
      this.prod_image,
      this.prod_oldprice,
      this.prod_newprice});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(4),
   
      child: Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetail(
                      productDetail_name: prod_name,
                      productDetail_image: prod_image,
                      productDetail_oldprice: prod_oldprice,
                      productDetail_newprice: prod_newprice,
                    ))),
                child: GridTile(
                    footer: Container(
                      height: 70,
                      color: Colors.white70,
                      child: ListTile(
                        leading: Text("$prod_name" , style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        title: Text("$prod_oldprice " + Strings.TL,textAlign: TextAlign.end, style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 12,fontWeight: FontWeight.bold),),
                        subtitle: Text(
                          "$prod_newprice" + Strings.TL,textAlign:TextAlign.end,
                          style:
                          TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.red),
                        ),
                      ),
                    ),
                    child: Image.asset(
                      prod_image,
                      fit: BoxFit.fill,
                    )),
              ),
            )),
      ),
    );
  }
}
