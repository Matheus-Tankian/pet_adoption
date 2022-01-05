import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              flex:1,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: ()=>{},
                        icon: const Icon(
                            Icons.menu,
                        ),
                    ),
                    const Spacer(),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage:AssetImage('assets/avatar.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}