/*
import 'package:flutter/material.dart';
import 'package:flutter_app/ShoppingCartDemo/Product.dart';
import 'package:flutter_app/entity/CatList.dart';

typedef void CartChangeCallback (Product product, bool isCart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Product product, CatList catList, this.inCart, this.onCartChanged})
    : product = product,
    super(key: new ObjectKey(product));

  final CatList catList = new CatList();
  final Product product = new Product();
  final bool inCart;
  final CartChangeCallback onCartChanged;

  Color _getColor (BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle (BuildContext context) {
    if(!inCart) return null;
    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough
    );
  }


  @override
  Widget build(BuildContext context) {
    return new ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: new CircleAvatar(
        backgroundColor: _getColor(context),
        // child: new Text(product.name[0]),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name, style: _getTextStyle(context)),
    );
  }
}*/
