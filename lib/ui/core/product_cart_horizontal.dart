import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/util/string_formatter.dart';
import 'package:flutter/material.dart';

class ProductCardHorizontal extends StatelessWidget{
  const ProductCardHorizontal({super.key, required ProductModel item}): _product = item;

  final ProductModel _product;

  @override
  Widget build(BuildContext context) {
    return (
      Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 1.33,
                child: Image(
                  image: AssetImage('assets/images/${_product.productImagePath}'),
                  fit: BoxFit.contain
                )
              )
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _product.productDisplayName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        formatMoney(_product.priceMinor),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ],
              )
            ),
          ] 
        )
      )
    ); 
  } 
}