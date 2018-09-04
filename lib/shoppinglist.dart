import 'package:flutter/material.dart';

List<Product> initProducts() {
  return <Product>[
    Product(name: "egg"),
    Product(name: "flour"),
    Product(name: "Chocolate chips"),
    Product(name: "egg"),
    Product(name: "flour"),
    Product(name: "Chocolate chips"),
    Product(name: "egg"),
    Product(name: "flour"),
    Product(name: "Chocolate chips"),
    Product(name: "egg"),
    Product(name: "flour"),
    Product(name: "Chocolate chips")
  ];
}

class Product {
  Product({this.name});

  final String name;
}

typedef void CartChangeCallback(Product product, bool isInCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool isInCart;
  final CartChangeCallback cartChangeCallback;

  ShoppingListItem({this.product, this.isInCart, this.cartChangeCallback})
      : super(key: ObjectKey(product));

  Color getColor(BuildContext context) {
    return isInCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle getStyle(BuildContext context) {
    if (!isInCart) {
      return null;
    }
    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: getColor(context),
        child: Text(
          product.name[0],
          style: getStyle(context),
        ),
      ),
      title: Text(product.name),
      onTap: () {
        cartChangeCallback(product, !isInCart);
      },
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  State<StatefulWidget> createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  //购物车
  Set<Product> cart = Set<Product>();

  void handleCartChange(Product product, bool isInCart) {
    setState(() {
      if (isInCart) {
        cart.add(product);
      } else {
        cart.remove(product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("商品列表"),
        ),
        body: ListView(
          children: widget.products.map((Product product) {
            return ShoppingListItem(
              product: product,
              isInCart: cart.contains(product),
              cartChangeCallback: handleCartChange,
            );
          }).toList(),
        ));
  }
}
