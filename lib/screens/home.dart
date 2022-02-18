import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:pet_adoption/controllers/controller.dart';
import 'package:pet_adoption/models/pet_model.dart';
import 'package:pet_adoption/screens/petlist.dart';
import 'package:pet_adoption/screens/search.dart';

import 'category_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();

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
                      CategoryList(catList: _controller.catList),
                      PetList(petList: _controller.petList),
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
