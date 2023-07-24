import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../model/shelter_model.dart';
import 'card/donation_card.dart';


class DonationsPage extends StatefulWidget {
  const DonationsPage({Key? key}) : super(key: key);

  @override
  State<DonationsPage> createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {
  String userName = "Diego";
  List<ShelterModel> albergues = shelters;

  List<ShelterModel> getSuggestions(String query) {
    if(query==""){
      return [];
    }
    List<ShelterModel> matches = [];
    matches.addAll(albergues);
    matches.retainWhere((s) => s.name.toString().toLowerCase().contains(query.toLowerCase()));
    return matches;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
                height: 40,
                width: double.infinity,
                child: TypeAheadField(
                  noItemsFoundBuilder: (context) => const SizedBox(
                    height: 50,
                    child: Center(
                      child: Text('No se encontraron albergues'),
                    ),
                  ),
                  suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                      color: Colors.white,
                      elevation: 4.0,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  debounceDuration: const Duration(milliseconds: 400),
                  textFieldConfiguration: TextFieldConfiguration(
                      decoration: InputDecoration(
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xfff1f1f1)),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.0,
                              )),
                          enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(40.0),
                              ),
                              borderSide: BorderSide(color: Color(0xfff1f1f1))),
                          hintText: "Busca aqui",
                          contentPadding:
                          const EdgeInsets.only(top: 4, left: 10),
                          hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon:
                              const Icon(Icons.search, color: Colors.grey)),
                          fillColor: Color(0xfff1f1f1),
                          filled: true)),
                  suggestionsCallback: (value) {
                    print("suggestionsCallback: "+value.toString());
                    return getSuggestions(value);
                  },
                  itemBuilder: (context, ShelterModel suggestion) {
                    return Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Text(
                              suggestion.name.toString(),
                              maxLines: 1,
                              // style: TextStyle(color: Colors.red),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  onSuggestionSelected: (ShelterModel suggestion) {
                    setState(() {
                      //Aqui abro un nuevo dialog con mi palabra suggestion.name

                    });
                  },
                )),
          ),
        ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
                child: Text(
                  userName + ", necesitamos tu ayuda !",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 350,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: albergues.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 300, // Ajusta el ancho del DonationCard
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DonationCard(shelterModel: albergues[index]),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
                child: Text("Cerca",
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 900, // Altura de la cuadrícula
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // Número de columnas (3 columnas en este caso)
                      crossAxisSpacing: 10, // Espacio horizontal entre elementos
                      mainAxisSpacing: 10, // Espacio vertical entre elementos
                    ),
                    itemCount: albergues.length, // Número de elementos en la cuadrícula
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Stack(
                          children: [
                            Container(
                              width: (MediaQuery.of(context).size.width - 30) / 2,
                              height: 300, // Altura de los elementos dentro de la cuadrícula
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      albergues[index].img.toString()), // Reemplaza con la URL de la imagen
                                  fit: BoxFit.cover, // Ajusta cómo se muestra la imagen dentro del contenedor
                                ),
                              ),
                            ),
                            Container(
                              width: (MediaQuery.of(context).size.width - 30) / 2,
                              height: 300, // Altura de los elementos dentro de la cuadrícula
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(0.25),
                                  Colors.black.withOpacity(0),
                                ]),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              albergues[index].name!,
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

