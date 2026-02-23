import 'package:flutter/material.dart';
import 'package:nike_shoes/data/list_of_shoes.dart';
import 'package:nike_shoes/main.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:nike_shoes/styles/style_of_text.dart';
import 'package:provider/provider.dart';

class Mygridcard extends StatelessWidget {
  const Mygridcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 520,
        child: GridView.builder(
          itemCount: shoesitems.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 240,
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            final itemsshoes = shoesitems[index];
            return Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        itemsshoes['image'],
                        width: 90,
                      ),
                    ),
                    Text(
                      itemsshoes['type'],
                      style: styleOftext.xxsm.copyWith(color: Colors.red),
                    ),
                    Text(itemsshoes['name'],
                        overflow: TextOverflow.ellipsis,
                        style: styleOftext.xsmB),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            itemsshoes['price'],
                            style: styleOftext.xsmB,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.read<FunctionsData>().additem(itemsshoes,context);
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
