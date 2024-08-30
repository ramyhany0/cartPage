import 'package:flutter/material.dart';

import 'package:project_with_cart/cart.dart';

void main(List<String> args) {
  runApp(ToCart());
}

class ToCart extends StatelessWidget {
  const ToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Cart();
  }
}
