import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({super.key, required this.showOnlyFavorites});
  final bool showOnlyFavorites;

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products =
        showOnlyFavorites ? productsData.favoriteItems : productsData.items;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        // return ChangeNotifierProvider(
        //   create: (BuildContext context) => products[index],
        return ChangeNotifierProvider.value(
          value: products[index],
          child: const ProductItem(),
          // child: ProductItem(
          //   id: products[index].id,
          //   title: products[index].title,
          //   imageUrl: products[index].imageUrl,
          // ),
        );
      },
      itemCount: products.length,
    );
  }
}
