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
    name: 'PataHome',
    img: 'https://efeverde.com/wp-content/uploads/2022/01/alepo-gatos.jpg',
    address: 'Avenida Imaginaria 456, Lima'
  ),
  ShelterModel(
    name: 'MiauRefugio',
    img: 'https://e.rpp-noticias.io/xlarge/2020/10/15/110011_1010058.jpg',
    address: 'Calle Ficticia 123, Miraflores, Lima'
  ),
  ShelterModel(
    name: 'GuauHogar',
    img: 'https://elcomercio.pe/resizer/A877dyzFn6Vksj7EbEjv81Iej5U=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/UIONYH5FVNCC7FOEE4QYMCRPEE.jpg',
    address: 'Jirón Irreal 789, Barranco, Lima'
  ),
  ShelterModel(
    name: 'PatitasParador',
    img: 'https://e.rpp-noticias.io/xlarge/2018/08/08/659401000-18752wjpg.jpg',
    address: 'Pasaje Inventado 234, Surco, Lima'
  ),
  ShelterModel(
    name: 'PeludoRefugio',
    img: 'https://res.cloudinary.com/worldpackers/image/upload/c_limit,f_auto,q_auto,w_1140/ltz4ltdmopqeqexzuakl',
    address: 'Avenida Ficción 890, San Borja, Lima'
  ),
  ShelterModel(
    name: 'CasaMascota',
    img: 'https://pqs.pe/wp-content/uploads/2021/09/IMG_7280-1024x768.jpg',
    address: 'Jirón Imaginación 345, La Molina, Lima'
  ),
  ShelterModel(
    name: 'PetRefugio',
    img: 'https://elcomercio.pe/resizer/Y4qpRvm9fKs_zaO4lpkMdxDoM6g=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/DDCE7DWFPBABJI4VNOCVV5SGGQ.png',
    address: 'Pasaje Irreal 678, Lince, Lima'
  )
];

