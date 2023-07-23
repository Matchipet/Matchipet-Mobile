import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class ShelterModel {
  String? name;
  String? img;
  String? address;

  ShelterModel({
    this.name,
    this.img,
    this.address,
  });
}

List<ShelterModel> shelters = [
  ShelterModel(
    name: 'Tomas',
    img: 'https://static.wikia.nocookie.net/silly-cats/images/c/cd/TheBeast.png/revision/latest?cb=20220807184501',
  ),
  ShelterModel(
    name: 'Kitten',
    img: 'https://s.yimg.com/ny/api/res/1.2/WfAIcTxGIhQZIMOSjLPohw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTg1Mw--/https://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/f4130c376e8c1633b900e6006fea8d89',
  ),
  ShelterModel(
    name: 'Trapecio',
    img: 'https://openseauserdata.com/files/4beb78c1fab1e6add27622cc5b92a0df.jpg',
  ),
  ShelterModel(
    name: 'Masapan',
    img: 'https://i.pinimg.com/736x/b4/91/10/b49110c24bcaa2411e38ae87fe229526.jpg',
  ),
  ShelterModel(
    name: 'Tomas',
    img: 'https://st2.depositphotos.com/45846082/48097/i/450/depositphotos_480977262-stock-photo-serious-funny-white-fold-cat.jpg',
  ),
  ShelterModel(
    name: 'Pandemio',
    img: 'https://memes.co.in/memes/update/uploads/2021/05/93e2379.jpg',
  ),
  ShelterModel(
    name: 'Amborgesa',
    img: 'https://i.chzbgr.com/full/9685969664/h10A308EE/cat',
  ),
  ShelterModel
    (
    name: 'Masapan',
    img: 'https://i.pinimg.com/736x/b4/91/10/b49110c24bcaa2411e38ae87fe229526.jpg',
  )
];

