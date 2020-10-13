import 'package:ecommerceproject/Utils/Messages.dart';
import 'package:ecommerceproject/Widgets/DefaultAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductDetail extends StatefulWidget {
  final productDetail_name;
  final productDetail_image;
  final productDetail_oldprice;
  final productDetail_newprice;

  const ProductDetail(
      {Key key,
      this.productDetail_name,
      this.productDetail_image,
      this.productDetail_oldprice,
      this.productDetail_newprice})
      : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(ProductHeaders.ProductDetail),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 420,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetail_image),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetail_name,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.productDetail_oldprice} " + Strings.TL,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.productDetail_newprice} " + Strings.TL,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ---------------BEDEN SEÇME BUTONU -----------------------------------
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  elevation: 0.5,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          ProductHeaders.Size,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                      ))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  elevation: 0.5,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          ProductHeaders.Quantity,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    elevation: 0.5,
                    onPressed: () {},
                    color: Colors.deepPurple,
                    textColor: Colors.white,
                    child: Text(ProductHeaders.AddToBasket)),
              ),
              IconButton(
                  icon: Icon(
                    MdiIcons.heartOutline,
                  ),
                  onPressed: () {})
            ],
          ),
          Divider(
            height: 20,
          ),
          Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Text(
            "Ürün Özellikleri",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
              )),
          Container(
            height: MediaQuery.of(context).size.height - 500,
            color: Colors.white70,
            child: Card(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Center(
                   child: Text("Bilgiler Burada Yer Alacak",style: TextStyle(fontSize: 15),textAlign: TextAlign.center,),
                 )
               ],
             ),
            ),
          )
        ],
      ),
    );
  }
}
