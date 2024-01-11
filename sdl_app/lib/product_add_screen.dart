import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sdl_app/product_list_screen.dart';
import 'dart:convert';
import 'package:sdl_app/product_model.dart';

class ProductAddScreen extends StatefulWidget {
  @override
  _ProductAddScreenState createState() => _ProductAddScreenState();
}

class _ProductAddScreenState extends State<ProductAddScreen> {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();
  final TextEditingController _categoryIdController = TextEditingController();
  final TextEditingController _originIdController = TextEditingController();

  Future<void> _addProduct() async {
    String productName = _productNameController.text;
    String productPrice = _productPriceController.text;
    String categoryId = _categoryIdController.text;
    String originId = _originIdController.text;

    if (productName.isNotEmpty &&
        productPrice.isNotEmpty &&
        categoryId.isNotEmpty &&
        originId.isNotEmpty) {
      Product newProduct = Product(
        id: 0, // Replace with an appropriate ID generation method
        categoryId: categoryId,
        originId: originId,
        productName: productName,
        productSlug: '',
        productPrice: productPrice,
        productDescription: '',
        productThumbnail: '',
        status: '',
        adminId: '',
        createdAt: null,
        updatedAt: null,
      );

      final response = await http.post(
        Uri.parse('http://laf.sdlrnd.com/api/add-product'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(newProduct.toJson()),
      );

      if (response.statusCode == 200) {
        // Product added successfully
        Navigator.of(context).pop();
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => ProductListScreen()),
        );

      } else {
        // Product adding failed
        // Handle the failure scenario
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Error'),
              content: Text('Failed to add product'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } else {
      // Show an error message or handle validation appropriately
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _productNameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _productPriceController,
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _categoryIdController,
              decoration: InputDecoration(labelText: 'Category ID'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _originIdController,
              decoration: InputDecoration(labelText: 'Origin ID'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                _addProduct();
              },
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:sdl_app/productService.dart';
// import 'package:sdl_app/product_model.dart';
//
// class ProductAddScreen extends StatefulWidget {
//   @override
//   _ProductAddScreenState createState() => _ProductAddScreenState();
// }
//
// class _ProductAddScreenState extends State<ProductAddScreen> {
//   final TextEditingController _productNameController = TextEditingController();
//   final TextEditingController _productPriceController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Product'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             TextField(
//               controller: _productNameController,
//               decoration: InputDecoration(labelText: 'Product Name'),
//             ),
//             SizedBox(height: 12.0),
//             TextField(
//               controller: _productPriceController,
//               decoration: InputDecoration(labelText: 'Product Price'),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 24.0),
//             ElevatedButton(
//               onPressed: () {
//                 // _addProduct();
//               },
//               child: Text('Add Product'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // void _addProduct() {
//   //   String productName = _productNameController.text;
//   //   String productPrice = _productPriceController.text;
//   //
//   //   // Validate input or perform additional checks if needed
//   //
//   //   if (productName.isNotEmpty && productPrice.isNotEmpty) {
//   //     Product newProduct = Product(
//   //       id: 0, // Replace with an appropriate ID generation method
//   //       categoryId: '',
//   //       originId: '',
//   //       productName: productName,
//   //       productSlug: '',
//   //       productPrice: productPrice,
//   //       productDescription: '',
//   //       productThumbnail: '',
//   //       status: '',
//   //       adminId: '',
//   //       createdAt: null,
//   //       updatedAt: null,
//   //     );
//   //
//   //     ProductService.addProduct(newProduct); // Implement addProduct method in ProductService
//   //     Navigator.of(context).pop(); // Return to the previous screen
//   //   } else {
//   //     // Show an error message or handle validation appropriately
//   //   }
//   // }
// }
