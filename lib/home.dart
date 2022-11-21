import 'package:flutter/material.dart';
import 'package:splashscreen/chatpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                height: 270,
                width: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage('assets/white5.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 110),
              child: Text(
                'Monica, 30 y,o.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.camera_enhance_sharp,
                      size: 35,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Add photo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.settings,
                          size: 35,
                          color: Colors.deepOrange,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.edit,
                          size: 35,
                          color: Colors.deepOrange,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Edit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
   
    );
  }
}
