class Product {
  final String id;
  String name;
  double price;

  Product(this.name, this.price) : id = "P-001";
}

void main() {
  Product p = Product("Laptop", 25000.0);

  print("Product ID: ${p.id}");
  print("Product Name: ${p.name}");
  print("Product Price: ${p.price}");
}
