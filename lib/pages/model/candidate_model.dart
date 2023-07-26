import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class ExampleCandidateModel {
  String? name;
  String? gender;
  String? age;
  String? race;
  String? img;
  String? type;
  String? size;

  ExampleCandidateModel({
    this.name,
    this.gender,
    this.age,
    this.race,
    this.img,
    this.type,
    this.size,
  });
}

List<ExampleCandidateModel> candidates = [
  ExampleCandidateModel(
    name: 'Tomas',
    gender: 'Male',
    age: '4 meses',
    race: 'Comun Europeo',
    img: 'https://static.wikia.nocookie.net/silly-cats/images/c/cd/TheBeast.png/revision/latest?cb=20220807184501',
    type: 'Gato',
    size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Kitten',
    gender: 'Female',
    age: '1 año',
    race: 'Comun Europeo',
    img: 'https://s.yimg.com/ny/api/res/1.2/WfAIcTxGIhQZIMOSjLPohw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTg1Mw--/https://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/f4130c376e8c1633b900e6006fea8d89',
      type: 'Gato',
      size: 'pequeño'

  ),
  ExampleCandidateModel(
    name: 'Trapecio',
    gender: 'Male',
    age: '6 meses',
    race: 'Curl Americano',
    img: 'https://openseauserdata.com/files/4beb78c1fab1e6add27622cc5b92a0df.jpg',
      type: 'Gato',
      size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Masapan',
    gender: 'Female',
    age: '5 meses',
    race: 'Angora',
    img: 'https://i.pinimg.com/736x/b4/91/10/b49110c24bcaa2411e38ae87fe229526.jpg',
      type: 'Gato',
      size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Tomas',
    gender: 'Male',
    age: '1 año',
    race: 'Comun Europeo',
    img: 'https://st2.depositphotos.com/45846082/48097/i/450/depositphotos_480977262-stock-photo-serious-funny-white-fold-cat.jpg',
      type: 'Gato',
      size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Pandemio',
    gender: 'Female',
    age: '5 meses',
    race: 'Comun Europeo',
    img: 'https://memes.co.in/memes/update/uploads/2021/05/93e2379.jpg',
      type: 'Gato',
      size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Amborgesa',
    gender: 'Male',
    age: '1 año',
    race: 'Britanico Corto',
    img: 'https://i.chzbgr.com/full/9685969664/h10A308EE/cat',
      type: 'Gato',
      size: 'pequeño'
  ),
  ExampleCandidateModel(
    name: 'Masapan',
    gender: 'Female',
    age: '5 meses',
    race: 'Comun Europeo',
    img: 'https://i.pinimg.com/736x/b4/91/10/b49110c24bcaa2411e38ae87fe229526.jpg',
      type: 'Gato',
      size: 'pequeño'
  )
];

