enum Routes {
  cart,
  registerPage, // Maybe it's not need to be a route
  payments,
  finilly,
}

extension RoutesExt on Routes {
  //custom message for each route type
  String get page => {
        Routes.cart: '/carrinho',
        Routes.registerPage: '/register',
        Routes.payments: '/payment',
      }[this]!;
}
