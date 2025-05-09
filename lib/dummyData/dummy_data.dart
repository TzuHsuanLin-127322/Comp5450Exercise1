import 'package:comp5450_exercise1/data/models/product_model.dart';
import 'package:comp5450_exercise1/data/models/product_property_model.dart';

String lorenIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

Map<int,ProductModel> dummyData = {
  18002: ProductModel(
    18002,
    'Apparel',
    'Bottomwear',
    'Capris',
    'Puma Women Essential Skinny Black 3/4 Pant',
    '18002.jpg',
    lorenIpsum,
    6678,
    [
      ProductPropertyModel('Gender', 'Women'),
      ProductPropertyModel('Base Color', 'Black'),
      ProductPropertyModel('Season','Summer'),
      ProductPropertyModel('Year', '2011'),
      ProductPropertyModel('Usage', 'Sports')
    ]
  ),
  28458: ProductModel(
    28458,
    'Apparel',
    'Bottomwear',
    'Capris',
    'Urban Yoga Women Blue Capris',
    '28458.jpg',
    lorenIpsum,
    8376,
    [
      ProductPropertyModel('Gender',      'Women'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Sports')
    ]
  ),
  27417: ProductModel(
    27417,
    'Apparel',
    'Bottomwear',
    'Capris',
    'Jockey Women Blue Relaxed Capris',
    '27417.jpg',
    lorenIpsum,
    5731,
    [
      ProductPropertyModel('Gender',      'Women'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Winter'),
      ProductPropertyModel('Year',        '2015'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  3909: ProductModel(
    3909,
    'Apparel',
    'Bottomwear',
    'Capris',
    'Urban Yoga Women Yoga Red Capri',
    '3909.jpg',
    lorenIpsum,
    6735,
    [
      ProductPropertyModel('Gender',      'Women'),
      ProductPropertyModel('Base Color',  'Red'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2011'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  4773: ProductModel(
    4773,
    'Apparel',
    'Bottomwear',
    'Capris',
    'ADIDAS Women 3S Blue Capri',
    '4773.jpg',
    lorenIpsum,
    8522,
    [
      ProductPropertyModel('Gender',      'Women'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2011'),
      ProductPropertyModel('Usage',       'Sports')
    ]
  ),
  39386: ProductModel(
    39386,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Peter England Men Party Blue Jeans',
    '39386.jpg',
    lorenIpsum,
    7813,
    [
      ProductPropertyModel('Gender',      'Men'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  16508: ProductModel(
    16508,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Locomotive Men Washed Blue Jeans',
    '16508.jpg',
    lorenIpsum,
    4453,
    [
      ProductPropertyModel('Gender',      'Men'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Fall'),
      ProductPropertyModel('Year',        '2011'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  11349: ProductModel(
    11349,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Lee Men Blue Chicago Fit Jeans',
    '11349.jpg',
    lorenIpsum,
    9213,
    [
      ProductPropertyModel('Gender',      'Men'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2017'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  39381: ProductModel(
    39381,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Peter England Men Party Black Jeans',
    '39381.jpg',
    lorenIpsum,
    6154,
    [
      ProductPropertyModel('Gender',      'Men'),
      ProductPropertyModel('Base Color',  'Black'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  11340: ProductModel(
    11340,
      'Apparel',
      'Bottomwear',
      'Jeans',
      'Lee Men Blue Chicago Fit Jeans',
      '11340.jpg',
      lorenIpsum,
      9523,
      [
        ProductPropertyModel('Gender',      'Men'),
        ProductPropertyModel('Base Color',  'Blue'),
        ProductPropertyModel('Season',      'Summer'),
        ProductPropertyModel('Year',        '2017'),
        ProductPropertyModel('Usage',       'Casual')
      ]
    ),
  13671: ProductModel(
    13671,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Levis Kids Blue Solid Jean',
    '13671.jpg',
    lorenIpsum,
    3008,
    [
      ProductPropertyModel('Gender',      'Unisex'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Fall'),
      ProductPropertyModel('Year',        '2011'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  33279: ProductModel(
    33279,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Gini and Jony Kids Unisex Blue Jeans',
    '33279.jpg',
    lorenIpsum,
    8807,
    [
      ProductPropertyModel('Gender',      'Unisex'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  13672: ProductModel(
    13672,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Levis Kids Blue Solid Jean',
    '13672.jpg',
    lorenIpsum,
    9806,
    [
      ProductPropertyModel('Gender',      'Unisex'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Fall'),
      ProductPropertyModel('Year',        '2011'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  33280: ProductModel(
    33280,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Gini and Jony Kids Unisex Blue Jeans',
    '33280.jpg',
    lorenIpsum,
    6050,
    [
      ProductPropertyModel('Gender',      'Unisex'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  31162: ProductModel(
    31162,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Gini and Jony Kids Unisex Blue Jeans',
    '31162.jpg',
    lorenIpsum,
    5647,
    [
      ProductPropertyModel('Gender',      'Unisex'),
      ProductPropertyModel('Base Color',  'Blue'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  26994: ProductModel(
    26994,
    'Apparel',
    'Bottomwear',
    'Jeans',
    'Jealous 21 Women Black Jeans',
    '26994.jpg',
    lorenIpsum,
    5615,
    [
      ProductPropertyModel('Gender',      'Women'),
      ProductPropertyModel('Base Color',  'Black'),
      ProductPropertyModel('Season',      'Summer'),
      ProductPropertyModel('Year',        '2012'),
      ProductPropertyModel('Usage',       'Casual')
    ]
  ),
  
};
