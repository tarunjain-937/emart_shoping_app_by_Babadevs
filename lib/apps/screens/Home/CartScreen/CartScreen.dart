import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("Cart Screen",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,color: Colors.white),),
      ),
      body: Center(child: Text("Your Cart Is Empty")),
    );
  }
}
