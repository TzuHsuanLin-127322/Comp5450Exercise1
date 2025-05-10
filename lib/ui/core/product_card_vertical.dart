import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget{
  const ProductCardVertical({super.key, required ProductModel item}): _product = item;

  final ProductModel _product;

  @override
  Widget build(BuildContext context) {
    return (
      Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Image(
                image: AssetImage('assets/images/${_product.productImagePath}'),
                fit: BoxFit.contain
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _product.productDisplayName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  maxLines: 2,
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Text(
                      "\$${_product.priceMinor/100}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    )
                  ],
                ),
              ],
            )
          ],
        )
      )
    );
  }
  
}