import 'package:ecommerceproject/Products/ProductDetail.dart';
import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsJackJones extends StatefulWidget {
  @override
  _ProductsJackJonesState createState() => _ProductsJackJonesState();
}

class _ProductsJackJonesState extends State<ProductsJackJones> {

  var urun_listesi = [
    {
      "urun_adi": "Jack Jones Lıam Orgınal Erkek Jean",
      "urun_resmi": "images/products/jjm1.jpeg",
      "urun_eskifiyat": 229.99,
      "urun_yenifiyat": 172.49,
    },
    {
      "urun_adi": "Jack Jones Erkek Baskılı T-Shirt",
      "urun_resmi": "images/products/jjm2.jpg",
      "urun_eskifiyat": 79.99,
      "urun_yenifiyat": 69.99,
    },
    {
      "urun_adi": "Jack Jones Jjtmeyland Parka ",
      "urun_resmi": "images/products/jjm3.jpg",
      "urun_eskifiyat": 799.99,
      "urun_yenifiyat": 499.99,
    },
    {
      "urun_adi": "Jack Jones Deri Ceket Jorspeedy",
      "urun_resmi": "images/products/jjm4.jpg",
      "urun_eskifiyat": 399.99,
      "urun_yenifiyat": 279.99,
    },
    {
      "urun_adi": "Jack Jones Sweatshirt - Corp Sweat Hood",
      "urun_resmi": "images/products/jjm5.jpg",
      "urun_eskifiyat": 179.99,
      "urun_yenifiyat": 119.99,
    },
    {
      "urun_adi": "Jack & Jones Jaclong Bere",
      "urun_resmi": "images/products/jjm6.jpg",
      "urun_eskifiyat": 69.99,
      "urun_yenifiyat": 59.99,
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
