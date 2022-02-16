import 'package:flutter/material.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/screens/petlist.dart';
import 'package:pet_adoption/screens/search.dart';

import 'category_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> catList = ['Dogs', 'Cats', 'Rabbits', 'Fish', 'Birds'];

    List<PetModel> petList = [
      PetModel(
          'Rover',
          'Pug',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://www.thegoodypet.com/wp-content/uploads/2020/08/teacup-pug-a-complete-guide-to-this-miniature-pug-breed-1200x900.jpg',
          2),
      PetModel(
          'Rex',
          'German Shepard',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://images.saymedia-content.com/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:eco%2Cw_1200/MTc4MzAwMjIwNTk2MDM3MjI5/german-shepherd-puppy-bite-inhibition-games.jpg',
          1),
      PetModel(
          'Murphy',
          'Puggle',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Alert_Pug_Puppy.jpg/1200px-Alert_Pug_Puppy.jpg',
          1),
      PetModel(
          'Rocky',
          'Husky',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://i.pinimg.com/originals/d2/6e/b3/d26eb3a76559bf520a2fbeb9f2698bbb.jpg',
          1),
      PetModel(
          'Louis',
          'Westie',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://static.independent.co.uk/2020/12/26/11/highland-terrier.jpg?width=1200',
          1),
      PetModel(
          'Rex',
          'Golden Retriever',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sit amet dictum enim, nec malesuada neque. Duis bibendum egestas sem, sed semper nisl imperdiet quis. Vivamus venenatis suscipit tortor, et faucibus ligula convallis non. Morbi vitae mi finibus massa tempor tempus tincidunt id velit.',
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Golden_Retriever_Puppy_12weeks.JPG/1200px-Golden_Retriever_Puppy_12weeks.JPG',
          1),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                            Icons.menu,
                          ),
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/avatar.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: Column(
                    children: [
                      const Search(),
                      const SizedBox(height: 20),
                      CategoryList(catList: catList),
                      PetList(petList: petList),
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
