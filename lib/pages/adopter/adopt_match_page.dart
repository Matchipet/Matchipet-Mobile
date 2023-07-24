import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:appinio_swiper/appinio_swiper.dart';
import '../model/candidate_model.dart';
import 'card/match_card.dart';
import 'package:flutter/cupertino.dart';

import 'card/match_buttons.dart';

class AdoptMatchPage extends StatefulWidget {
  const AdoptMatchPage({Key? key}) : super(key: key);

  @override
  State<AdoptMatchPage> createState() => _AdoptMatchPageState();
}

class _AdoptMatchPageState extends State<AdoptMatchPage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
      return false;
      },
      child: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Haz match con tu peludito ideal !",
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),),
                  ),
                  MaterialButton(onPressed: (){},
                      splashColor: Colors.transparent, // Establecer el color del splash a transparente
                      highlightColor: Colors.transparent,
                      child: Container(
                        padding: const EdgeInsets.all(1),
                        child: Image.asset(
                          'lib/images/preferences_icon.png',
                          color: Colors.red,
                          width: 20,
                          height: 20,
                        ),
                      )
                  )
                ]
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.67,
              child: AppinioSwiper(
                backgroundCardsCount: 2,
                swipeOptions: const AppinioSwipeOptions.all(),
                unlimitedUnswipe: true,
                controller: controller,
                unswipe: _unswipe,
                onSwiping: (AppinioSwiperDirection direction) {
                  debugPrint(direction.toString());
                },
                onSwipe: _swipe,
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 10,
                  bottom: 37,
                ),
                onEnd: _onEnd,
                cardsCount: candidates.length, // Asegúrate de que candidates esté definido
                cardsBuilder: (BuildContext context, int index) {
                  return ExampleCard(candidate: candidates[index]); // Reemplaza ExampleCard con el widget que deseas mostrar
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 20,
                ),
                swipeLeftButton(controller),
                const SizedBox(
                  width: 40,
                ),
                swipeRightButton(controller),
                const SizedBox(
                  width: 40,
                ),
                unswipeButton(controller),
              ],
            )
          ],
        ),
      ),
    );

  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: " + direction.name);
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }

  void _onEnd() {
    log("end reached!");
  }
}
