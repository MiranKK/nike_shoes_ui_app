import 'package:flutter/material.dart';
import 'package:nike_shoes/styles/custom_btn.dart';
import 'package:nike_shoes/styles/style_of_text.dart';

class MycardWiidget extends StatelessWidget {
  const MycardWiidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Card(
                elevation: 20,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        
                        "assets/cover-image.jpg",
                        width: 330,
                        color: Colors.black.withOpacity(0.8),
                        colorBlendMode: BlendMode.dstATop,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "New Release",
                        style: styleOftext.xsm.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10),
                      child: Text(
                        "Nike Air\nMax 90",
                        style: styleOftext.smB.copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 120, left: 10),
                        child: CustomButton(
                          text: "Buy Now",
                          style: styleOftext.xsmB,
                          onpressed: () {},
                          color: Colors.white,
                          textcolor: Colors.black,
                        )),
                  ],
                ),
              ),
            );
  }
}