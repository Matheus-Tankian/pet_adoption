import 'package:flutter/material.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/screens/details.dart';

class PetList extends StatelessWidget {
  const PetList({
    Key? key,
    required this.petList,
  }) : super(key: key);

  final List<PetModel> petList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: 450,
        width: 500,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: petList.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Details(index: index))),
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white70,
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    child: Image.network(petList[index].image),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${petList[index].name} - ${petList[index].age} Yrs',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
