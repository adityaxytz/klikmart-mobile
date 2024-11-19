class ProductEntry {
    String model;
    String pk;
    Fields fields;

    ProductEntry({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) {
    return ProductEntry(
      model: json['model'] as String,
      pk: json['pk'] as String,
      fields: Fields.fromJson(json['fields']),
    );
  }
}

class Fields {
    String name;
    int price;
    String description;
    int quantity;
    int user;

    Fields({
        required this.name,
        required this.price,
        required this.description,
        required this.quantity,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) {
    return Fields(
      name: json['name'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      quantity: json['quantity'] as int,
      user: json['user'] as int,
    );
  }
}



