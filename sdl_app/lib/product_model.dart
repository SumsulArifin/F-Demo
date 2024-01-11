class Product {
  final int id;
  final String categoryId;
  final String originId;
  final String productName;
  final String productSlug;
  final String productPrice;
  final String productDescription;
  final String productThumbnail;
  final String status;
  final String adminId;
  final dynamic createdAt;
  final dynamic updatedAt;

  Product({
    required this.id,
    required this.categoryId,
    required this.originId,
    required this.productName,
    required this.productSlug,
    required this.productPrice,
    required this.productDescription,
    required this.productThumbnail,
    required this.status,
    required this.adminId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      categoryId: json['category_id'],
      originId: json['origin_id'],
      productName: json['product_name'],
      productSlug: json['product_slug'],
      productPrice: json['product_price'],
      productDescription: json['product_description'] ?? "",
      productThumbnail: json['product_thumbnail'],
      status: json['status'] ?? "",
      adminId: json['admin_id'] ?? "",
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_id': categoryId,
      'origin_id': originId,
      'product_name': productName,
      'product_slug': productSlug,
      'product_price': productPrice,
      'product_description': productDescription,
      'product_thumbnail': productThumbnail,
      'status': status,
      'admin_id': adminId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
