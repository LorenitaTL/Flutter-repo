import 'package:meta/meta.dart' show required;

class RappiCategory {
  const RappiCategory({@required this.name, @required this.products});
  final String name;
  final List<RappiProduct> products;
}

class RappiProduct {
  final String name;
  final String description;
  final double price;
  final String image;

  const RappiProduct(
      {@required this.name,
      @required this.description,
      @required this.price,
      @required this.image});
}

const rappiCategories = [
  RappiCategory(name: 'Orden Again', products: [
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
  ]),
  RappiCategory(name: 'Picker For you', products: [
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
  ]),
  RappiCategory(name: 'Orden Again 2', products: [
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
    RappiProduct(
        name: 'Silim Lights',
        description: '.........',
        price: 250,
        image: 'assets/pizza.png'),
  ]),
  RappiCategory(name: 'Picker For you 2', products: [
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
    RappiProduct(
        name: 'Salad',
        description: '.........',
        price: 250,
        image: 'assets/salad.jpeg'),
  ]),
];
