import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.catList,
  }) : super(key: key);

  final List<String> catList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 30),
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catList.length,
            itemBuilder: (icontext, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple[400],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Center(
                          child: Text(
                            catList[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
