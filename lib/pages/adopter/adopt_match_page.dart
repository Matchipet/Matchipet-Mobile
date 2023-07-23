import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:appinio_swiper/appinio_swiper.dart';
import '../model/example_candidate_model.dart';
import 'card/example_card.dart';
import 'package:flutter/cupertino.dart';

import 'card/example_buttons.dart';

class AdoptMatchPage extends StatefulWidget {
  const AdoptMatchPage({Key? key}) : super(key: key);

  @override
  State<AdoptMatchPage> createState() => _AdoptMatchPageState();
}

class _AdoptMatchPageState extends State<AdoptMatchPage> {
  final AppinioSwiperController controller = AppinioSwiperController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.70,
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
                bottom: 50,
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
