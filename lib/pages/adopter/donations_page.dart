import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
//import 'state_servies.dart';
import '../model/shelter_model.dart';


class DonationsPage extends StatefulWidget {
  const DonationsPage({Key? key}) : super(key: key);

  @override
  State<DonationsPage> createState() => _DonationsPageState();
}

class _DonationsPageState extends State<DonationsPage> {
  String? userSelected;
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
                      userSelected = suggestion.name;
                    });
                  },
                )),
          ),
        ),
        body: Center(
          child: Text(
            userSelected ?? 'Search',
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}

