class ProductModel {
  int id;
  String sku;
  String name;
  String price;

  ProductModel({this.id, this.name});

  String productName() {
    return this.sku + this.name;
  }
}
