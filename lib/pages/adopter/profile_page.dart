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
                      'https://static.wikia.nocookie.net/starwars/images/2/26/Cody_brief.png/revision/latest/thumbnail/width/360/height/360?cb=20160123025350',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Diego Talledo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text('Edad: 30'),
              SizedBox(height: 5),
              Text('Género: Masculino'),
              SizedBox(height: 5),
              Text('Distrito de Residencia: San Miguel'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(Icons.edit, size: 30, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Editar',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Icon(Icons.upgrade, size: 30, color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Mejorar',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Divider
              Divider(thickness: 2),
              SizedBox(height: 20),
              // Container con "Ahora mismo estoy buscando"
              Container(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Ahora mismo estoy buscando',
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
                    imageName = 'fish_icon.png';
                  else if (index == 5)
                    imageName = 'hamster_icon.png';
                  else
                    imageName = 'default_icon.png'; // Valor predeterminado en caso de que no coincida con ningún índice

                  return GestureDetector(
                    onTap: () {
                    setState(() {
                      petPreferences[index] = !petPreferences[index];
                    });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 4, // Configura la elevación para agregar sombra
                        shadowColor: Colors.black.withOpacity(0.4), // Ajusta la opacidad para hacer la sombra más tenue
                        borderRadius: BorderRadius.circular(10),
                        color: petPreferences[index] ? Colors.red : Colors.white,
                        child: Column( // Usamos una columna para tener el Container y el Text debajo
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: petPreferences[index] ? Colors.red : Colors.white, width: 2),
                              ),
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
                              petPreferencesName[index], // Llamamos a una función que obtiene el nombre del índice
                              style: TextStyle(fontSize: 12, color: petPreferences[index] ? Colors.white : Colors.black),
                            ),
                          ],
                        ),
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


