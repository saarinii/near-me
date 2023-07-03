import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class essentials extends StatefulWidget {
  const essentials({super.key});

  @override
  State<essentials> createState() => _essentialsState();
}

class _essentialsState extends State<essentials> {
  final List<String> boxImages = [
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
    'assets/OIP.jpg',
  ];

  final List<String> boxTexts = [
    'Box 1',
    'Box 2',
    'Box 3',
    'Box 4',
    'Box 5',
    'Box 6',
    'Box 7',
    'Box 8',
    'Box 9',
    'Box 10',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                iconTheme: const IconThemeData(
                  color: Colors.black, // Set the icon color to black
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CameraApp()),
                    );
                  },
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                ],
              ), // App bar will hide when scrolling up

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    if (index == 0) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'FOOD',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                      );
                    }

                    index -= 1; // Adjust the index to account for the title

                    return Container(
                      height: 100,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            boxImages[index],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          Text(
                            boxTexts[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: boxImages.length + 1, // Add 1 for the title
                ),
              ),
            ],
          ),
        ));
  }
}
