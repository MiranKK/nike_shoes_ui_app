import 'package:flutter/material.dart';
import 'package:nike_shoes/data/list_of_shoes.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:nike_shoes/styles/style_of_text.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FunctionsData>(
        builder: (context, value, child) => Scaffold(
              body: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            "Cart",
                            style: styleOftext.medB,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: SizedBox(
                          height: 500,
                          child: value.shoeitems.isEmpty
                              ? Align(
                                  alignment: const Alignment(0, 0.2),
                                  child: Text(
                                    "No item in the cart",
                                    style: styleOftext.sm
                                        .copyWith(color: Colors.grey),
                                  ))
                              : ListView.builder(
                                  itemCount: value.shoeitems.length,
                                  itemBuilder: (context, index) {
                                    final item = value.shoeitems[index];
                                    return Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Dismissible(
                                        key: UniqueKey(),
                                        direction: DismissDirection.endToStart,
                                        confirmDismiss: (direction) async {
                                          context
                                              .read<FunctionsData>()
                                              .removeItem(item);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text(
                                                      '${item['name']} remove the cart')));
                                          return true;
                                        },
                                        background: Container(
                                          color: Colors.red,
                                          child: const Icon(
                                            Icons.remove_shopping_cart,
                                            color: Colors.white,
                                          ),
                                        ),
                                        child: Card(
                                          elevation: 10,
                                          child: ListTile(
                                            contentPadding:
                                                const EdgeInsets.all(5),
                                            leading: Image.asset(item["image"]),
                                            title: Text(item['name']),
                                            subtitle: Text(item['type']),
                                            trailing: Text(
                                              item['price'],
                                              style: styleOftext.xsmB,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                        ),
                      ),
                    ])),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              floatingActionButton: SizedBox(
                width: 200,
                child: FloatingActionButton(
                  backgroundColor: Colors.orange[900],
                  elevation: 10,
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "Total Price:  \$${value.totalPrice.toStringAsFixed(2)}"),
                        ],
                      ),
                      const Text("Check Out"),
                    ],
                  ),
                ),
              ),
            ));
  }
}
