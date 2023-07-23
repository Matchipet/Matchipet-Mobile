import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                height: 200, // Establece la altura deseada
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: (MediaQuery.of(context).size.width / 3) / 100,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Icon(Icons.pets, size: 30);
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


