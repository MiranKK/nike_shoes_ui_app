import 'package:flutter/material.dart';
import 'package:nike_shoes/data/list_of_shoes.dart';
import 'package:nike_shoes/provider/functions.dart';
import 'package:nike_shoes/styles/custom_btn.dart';
import 'package:nike_shoes/styles/style_of_text.dart';
import 'package:nike_shoes/widgets/mycard_wiidget.dart';
import 'package:nike_shoes/widgets/mygridcard.dart';
import 'package:nike_shoes/widgets/mylistshoes.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    )
                  ],
                ),
              ),
              const MycardWiidget(),
              const Mylistshoes(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Men's",
                      style: styleOftext.medB,
                    ),
                    Text(
                      "see all",
                      style: styleOftext.xsm.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
             Mygridcard()
            ],
          ),
        ),
      )),
floatingActionButtonLocation:FloatingActionButtonLocation.startFloat ,
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orange[900]
        ),
        child: Icon(Icons.home,color: Colors.white,size: 30,),
      ),
    );
  }
}
