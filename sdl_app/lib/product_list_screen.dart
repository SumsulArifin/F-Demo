import 'package:flutter/material.dart';
import 'package:sdl_app/productService.dart';
import 'package:sdl_app/product_add_screen.dart';
import 'package:sdl_app/product_model.dart';

class ProductListScreen extends StatefulWidget {
  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late Future<List<Product>> futureProducts;
  TextEditingController searchController = TextEditingController();
  List<Product> displayedProducts = [];

  @override
  void initState() {
    super.initState();
    futureProducts = ProductService.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: searchController,
              onChanged: (value) {
                _runFilter(value);
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15,
                ),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: FutureBuilder<List<Product>>(
              future: futureProducts,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No products found'));
                } else {
                  return _buildProductList();
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductAddScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _runFilter(String query) async {
    final products = await futureProducts;
    setState(() {
      displayedProducts = products
          .where((product) =>
          product.productName.toLowerCase().contains(query.toLowerCase()))
          .toList();

    });
  }

  Widget _buildProductList() {
    return ListView.builder(
      itemCount: displayedProducts.length,
      itemBuilder: (context, index) {
        var product = displayedProducts[index];
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(product.productName),
            subtitle: Text('Price: ${product.productPrice}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                // IconButton(
                //   icon: Icon(Icons.edit),
                //   onPressed: () {
                //     // Implement edit functionality here
                //     // _editProduct(product);
                //   },
                // ),
                // IconButton(
                //   icon: Icon(Icons.delete),
                //   onPressed: () {
                //     // Implement delete functionality here
                //     _deleteProduct(product);
                //   },
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _editProduct(Product product) {
    // Implement edit functionality, e.g., navigate to edit screen
    // You can pass the selected product to the edit screen
    // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProductScreen(product: product)));
  }

  void _deleteProduct(Product product) {
    // Implement delete functionality, e.g., show a confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Product'),
          content: Text('Are you sure you want to delete ${product.productName}?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Implement the actual delete logic here
                _performDelete(product);
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Delete'),
            ),
          ],
        );
      },
    );
  }

  void _performDelete(Product product) {
    // Implement the actual delete logic here
    // Call your service or method to delete the product
    // After deletion, you may want to refresh the product list
    // For example: setState(() { displayedProducts.remove(product); });
  }
}


////
// import 'package:flutter/material.dart';
// import 'package:sdl_app/productService.dart';
// import 'package:sdl_app/product_add_screen.dart';
// import 'package:sdl_app/product_model.dart';
//
// class ProductListScreen extends StatefulWidget {
//   @override
//   _ProductListScreenState createState() => _ProductListScreenState();
// }
//
// class _ProductListScreenState extends State<ProductListScreen> {
//   late Future<List<Product>> futureProducts;
//
//   @override
//   void initState() {
//     super.initState();
//     futureProducts = ProductService.fetchProducts();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Product List'),
//         centerTitle: true,
//         backgroundColor: Colors.blueGrey,
//       ),
//       body: FutureBuilder<List<Product>>(
//         future: futureProducts,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No products found'));
//           } else {
//             return _buildProductList(snapshot.data!);
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ProductAddScreen()),
//           );
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
//
//   Widget _buildProductList(List<Product> products) {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         var product = products[index];
//         return Card(
//           margin: EdgeInsets.all(8.0),
//           child: ListTile(
//             title: Text(product.productName),
//             subtitle: Text('Price: ${product.productPrice}'),
//             // Add more widgets to display other product details
//           ),
//         );
//       },
//     );
//   }
// }