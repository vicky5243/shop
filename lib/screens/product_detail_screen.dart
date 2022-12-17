import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({super.key, required this.title});
  // final String title;
  const ProductDetailScreen({super.key});
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // Extract arguments
    String? productId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
