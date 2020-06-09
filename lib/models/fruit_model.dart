class Fruit {
  final String name;
  final String imageUrl;
  final String description;
  final String weight;
  final double price;
  final String color;
  final bool isInCart;

  Fruit({
    this.name,
    this.imageUrl,
    this.description,
    this.weight,
    this.price,
    this.color,
    this.isInCart
  });

}

final List<Fruit> fruits = [
  Fruit(
    name: 'Strawberries',
    imageUrl: 'assets/images/strawberry.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: '1 lb',
    price: 2.45,
    color: '0xFFEF9A9A',
    isInCart: true
  ),
  Fruit(
    name: 'Pineapple',
    imageUrl: 'assets/images/pineapple.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: '1 lb',
    price: 1.52,
    color: '0xFFFFF8E1',
    isInCart: false
  ),
  Fruit(
    name: 'Blueberries',
    imageUrl: 'assets/images/blueberries.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: '1 lb',
    price: 4.45,
    color: '0xFFC5CAE9',
    isInCart: false
  ),
  Fruit(
    name: 'Dragon Fruit',
    imageUrl: 'assets/images/dragon_fruit.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: 'Average 0.87 lb',
    price: 5.45,
    color: '0xFFF3E5F5',
    isInCart: true
  ),
  Fruit(
    name: 'Lychee',
    imageUrl: 'assets/images/lychee.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: '1 lb',
    price: 2.45,
    color: '0xFFB9F6CA',
    isInCart: false
  ),
  Fruit(
    name: 'Mango',
    imageUrl: 'assets/images/mango.png',
    description: 'Lorem ipsum dollar sit amet dummy description text for this fruit just for placeholder',
    weight: '1 lb',
    price: 1.25,
    color: '0xFFFFD180',
    isInCart: true
  )
];