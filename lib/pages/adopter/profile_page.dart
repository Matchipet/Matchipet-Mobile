import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List petPreferences=[true,true,false,false,false,false];
  List petPreferencesName=["Perros","Gatos","Conejos","Aves","Peces","Hamsters"];
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
                      'https://i2-prod.mirror.co.uk/incoming/article26956423.ece/ALTERNATES/s1200c/1_58th-Cannes-Film-Festival-Decameron-Angels-and-Virgins-Photocall.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hayden Christensen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.calendar_month_outlined, size: 20, color: Color(
                      0xff575757)),
                  Text(' 20 años'),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline, size: 20, color: Color(
                      0xff575757)),
                  Text(' Masculino'),
                ],
              ),
              SizedBox(height: 5),
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
              // Divider
              Divider(thickness: 2),
              SizedBox(height: 10),
              // Container con "Ahora mismo estoy buscando"
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Ahora mismo estoy buscando...',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: (MediaQuery.of(context).size.width / 3) / 100,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: petPreferences.length,
                  itemBuilder: (context, index) {
                    String imageName;
                    if (index == 0)
                      imageName = 'dog_icon.png';
                    else if (index == 1)
                      imageName = 'cat_icon.png';
                    else if (index == 2)
                      imageName = 'bunny_icon.png';
                    else if (index == 3)
                      imageName = 'bird_icon.png';
                    else if (index == 4)
                      imageName = 'hamster_icon.png';
                    else if (index == 5)
                      imageName = 'fish_icon.png';
                    else
                      imageName = 'default_icon.png'; // Valor predeterminado en caso de que no coincida con ningún índice

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        onPressed: (){
                          setState(() {
                            petPreferences[index] = !petPreferences[index];
                          });
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 2,
                        color: petPreferences[index] ? Color(
                            0xfff13854) : Colors.white,
                        child: Column( // Usamos una columna para tener el Container y el Text debajo
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                child: Image.asset(
                                  'lib/images/$imageName',
                                  color: petPreferences[index] ? Colors.white : Colors.black,
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                            ),
                            Text(
                              petPreferencesName[index],
                              style: TextStyle(fontSize: 12, color: petPreferences[index] ? Colors.white : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


