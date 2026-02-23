import 'package:flutter/material.dart';
import 'package:nike_shoes/data/list_of_shoes.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:provider/provider.dart';

class Mylistshoes extends StatelessWidget {
  const Mylistshoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ListView.builder(
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = items[index];
            return Consumer<FunctionsData>(
              builder: (context, value, child) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    context.read<FunctionsData>().chnagetapped(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: value.currentselect == index
                            ? Colors.orange[900]
                            : Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    width: 140,
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: value.currentselect == index
                              ? Colors.white
                              : Colors.black.withOpacity(0.1),
                          radius: 20,
                          backgroundImage: AssetImage(item["image"]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          item['type'],
                          style: TextStyle(
                              color: value.currentselect == index
                                  ? Colors.white
                                  : Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
