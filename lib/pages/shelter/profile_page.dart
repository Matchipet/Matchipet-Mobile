import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String shelterName = "Entre Patas";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIicBv-1499HedlWb01kPxXovJmf65W6Z6-LCy4bn8EgoSnMOfpMJPIjIYUf6P08ZjXwU&usqp=CAU',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                  shelterName.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pin_drop_sharp, size: 20, color: Color(
                      0xff7e7e7e)),
                  Text(' San Miguel, Lima'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xffe5e4e4),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit, size: 30, color: Color(0xffafafaf)),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '      Editar \n Informacion',
                        style: TextStyle(fontSize: 12, color: Color(
                            0xff6b6b6b)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xffe5e4e4),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.upgrade, size: 30, color: Color(0xffafafaf)),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '  Mejorar \n  Cuenta',
                        style: TextStyle(fontSize: 12, color: Color(
                            0xff6b6b6b)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 18,left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '293',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'post',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 25,
                      width: 1,  // Ancho del "divider"
                      color: Color(0xffbdbdbd),
                    ),
                    Column(
                      children: [
                        Text(
                          '154',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'matchs',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 25,
                      width: 1,  // Ancho del "divider"
                      color: Color(0xffbdbdbd),
                    ),
                    Column(
                      children: [
                        Text(
                          '97',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'adoptados',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text(
                      "Acerca de nosotros",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(
                          0xff484848)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22),
                        child: Text(
                          "Somos Entre Patas, un albergue comprometido con brindar cuidado y afecto a animales en busca de un hogar. Nos enfocamos en perros y gatos de todas las edades y tamaños, trabajando incansablemente para encontrarles familias amorosas. Nuestra misión es educar sobre la adopción responsable y fomentar el respeto hacia los seres vivos. Únete a nosotros para marcar la diferencia en la vida de un compañero peludo",
                          style: TextStyle(fontSize: 14, color: Color(0xff484848)),
                        ),
                      ),
                    ),
                  ],
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}
