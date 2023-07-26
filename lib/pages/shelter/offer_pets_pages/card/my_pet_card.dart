import 'package:flutter/material.dart';
import '../../../model/candidate_model.dart';

class MyPetCard extends StatelessWidget {
  final ExampleCandidateModel candidate;

  const MyPetCard({
    Key? key,
    required this.candidate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 180,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    candidate.img ?? '', // Provide a default value if img is null
                    width: 100,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        candidate.name ?? 'Nombre Desconocido', // Provide a default value if name is null
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Animal: ' + (candidate.type ?? 'Tipo Desconocido'),
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Gender: ' + (candidate.gender ?? 'Género Desconocido'),
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Size: ' + (candidate.size ?? 'Tamaño Desconocido'),
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Age: ' + (candidate.age ?? 'Edad Desconocida'),
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Puesto en adopción el 4 de agosto',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

