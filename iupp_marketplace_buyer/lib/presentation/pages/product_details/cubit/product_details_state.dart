part of 'product_details_cubit.dart';

@immutable
abstract class ProductDetailsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductDetailsInitial extends ProductDetailsState {}

class ProductDetailsAddingItemToCart extends ProductDetailsState {}

class ProductDetailsAddItemToCartSuccess extends ProductDetailsState {}

class ProductDetailsAddItemToCartFailed extends ProductDetailsState {}
