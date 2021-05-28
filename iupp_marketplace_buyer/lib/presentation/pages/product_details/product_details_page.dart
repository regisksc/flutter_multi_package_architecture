import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/datasources/datasources.dart';
import '../../../data/repositories/repositories.dart';
import '../../../domain/entity/entities.dart';

import 'cubit/product_details_cubit.dart';
import 'product_details_widget.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage(
    this.product, {
    Key? key,
  }) : super(key: key);

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductDetailsCubit>(
      create: (_) => ProductDetailsCubit(
        ProductDetailsRepository(
          ProductDetailsDatasource(),
        ),
      ),
      child: ProductDetailsWidget(product),
    );
  }
}
