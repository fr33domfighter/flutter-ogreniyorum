void main() {
  var product1 = product(15.99, "muz");
  List<product> products = [
    product1,
  ];
  print(products[0].name + " fiyat: " + products[0].price.toString());
}

class product {
  late double price;
  late String name;

  product(double price, String name) {
    this.name = name;
    this.price = price;
  }
}
