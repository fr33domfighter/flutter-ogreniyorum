//data işlemleri burada olacak veri çekme gönderme vs.
import 'package:bloc/models/product.dart';

class ProductService {
  //singleton factory pattern
  //ürün listem geldi
  static List<Product> products = <Product>[];
  //static List<Product> getAll() {
  //products.add(Product(1, "hp laptop", 5000));
  //products.add(Product(2, "masa", 3000));
  //products.add(Product(3, "bardak", 30));
  //}
}
