import 'package:flutter/material.dart';
import 'package:loja/models/products.dart';
import '../../data/users.dart';
import '../../home/containts.dart';
import 'confirmar.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key, required this.product, required this.customer})
      : super(key: key);

  final Product product;
  final Customer customer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          /*Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.orange),
            ),
            /* child: IconButton(
              icon: Image.asset(
                "assets/images/carrinho.png",
                color: Colors.orange,
              ),
              onPressed: () {},
            ),*/
          ),*/
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            Confirmar(product: product, customer: customer)),
                  );
                },
                child: Text(
                  "Comprar agora".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
