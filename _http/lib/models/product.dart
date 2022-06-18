class Products {
  late int id;
  late int categoryId;
  late String productName;
  late String quantityPerUnit;
  late var unitPrice;
  late int unitsInStock;

  Products(this.id, this.categoryId, this.productName, this.quantityPerUnit,
      this.unitPrice, this.unitsInStock);

  Products.fromJson(Map json) {
    id = json["id"];
    categoryId = json["categoryId"];
    productName = json["productName"];
    quantityPerUnit = json["quantityPerUnit"];
    unitPrice = json["unitPrice"];
    unitsInStock = json["unitsInStock"];
  }

  Map toJson() {
    return {
      "id": id,
      "categoryId": categoryId,
      "productName": productName,
      "quantityPerUnit": quantityPerUnit,
      "unitPrice": unitPrice,
      "unitsInStock": unitsInStock
    };
  }
}
