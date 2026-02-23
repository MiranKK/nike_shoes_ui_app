import 'package:flutter/material.dart';

import 'package:nike_shoes/styles/style_of_text.dart';
import 'package:nike_shoes/widgets/bottomnavigationBar.dart';

class OnboeardScreen extends StatelessWidget {
  const OnboeardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragEnd: (DragEndDetails details) {
          if (details.primaryVelocity! < 0) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const MyBottomNavigation();
            }));
          }
        },
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/download-1.jfif",
                fit: BoxFit.cover,
                height: 800,
                color: Colors.black.withOpacity(0.8),
                colorBlendMode: BlendMode.dstATop,
              ),
            ),
            Align(
                alignment: const Alignment(0, 0.4),
                child: Text(
                  "LIVE YOUR\nPERFECT",
                  textAlign: TextAlign.center,
                  style: styleOftext.xlB
                      .copyWith(color: Colors.white, letterSpacing: 1.5),
                )),
            Align(
                alignment: const Alignment(0, 0.6),
                child: Text(
                  "Smart gorgeous & fashionable\ncollecions makes you cool",
                  textAlign: TextAlign.center,
                  style: styleOftext.sm
                      .copyWith(color: Colors.white.withOpacity(0.9)),
                )),
            Align(
                alignment: const Alignment(0, 0),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.swipe_up,
                          color: Colors.white,
                          size: 30,
                          shadows: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                            )
                          ],
                        ),
                        Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: styleOftext.smB.copyWith(
                              color: Colors.white.withOpacity(0.9),
                              shadows: [
                                const BoxShadow(
                                    color: Colors.white, blurRadius: 20)
                              ]),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
