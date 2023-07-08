import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:url_launcher/url_launcher.dart';

class hostels extends StatefulWidget {
  @override
  State<hostels> createState() => _hostelsState();
}

class _hostelsState extends State<hostels> {
  List<String> imageAssets = [
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

  List<String> texts = [
    'XYZ, near DCB, Upper Kandoli, Bidholi',
    'ABC, near DCB, Upper Kandoli, Bidholi,UPES Road',
    'XYZ, near DCB, Upper Kandoli, Bidholi',
    'ABC, near DCB, Upper Kandoli, Bidholi',
    'XYZ, near DCB, Upper Kandoli, Bidholi',
    'ABC, near DCB, Upper Kandoli, Bidholi',
    'XYZ, near DCB, Upper Kandoli, Bidholi',
    'ABC, near DCB, Upper Kandoli, Bidholi',
    'XYZ, near DCB, Upper Kandoli, Bidholi',
    'ABC, near DCB, Upper Kandoli, Bidholi',
  ];

  List<String> links = [
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
    "https://www.figma.com/file/VaxEBFn0qP7MPrDDSGYvy3/DoorDarshan?type=design&node-id=6-963&mode=design&t=MnkEpGSRmeiCHuLO-0",
  ];

  @override
  Widget build(BuildContext context) {
    Widget rectangleBoxes = createRectangleBoxes(imageAssets, texts, links);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            pinned: false,
            iconTheme: const IconThemeData(
              color: Colors.black, // Set the icon color to black
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CameraApp()),
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
          ),
          SliverPadding(
            padding: EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HOSTELS',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 183, 69, 145),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  rectangleBoxes,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget createRectangleBoxes(
      List<String> imageAssets, List<String> texts, List<String> links) {
    List<Widget> rectangleBoxes = [];
    for (int i = 0; i < 10; i++) {
      Widget box = Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5, // Set the spread radius of the shadow
              blurRadius: 0.5, // Set the blur radius of the shadow
              offset: Offset(0, 5), // Set the offset of the shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(bottom: 10.0),
        child: InkWell(
          onTap: () {
            launch(links[i]);
          },
          child: Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(imageAssets[i]),
              ),
              SizedBox(
                width: 12,
              ),
              Flexible(
                child: Text(
                  texts[i],
                  style: TextStyle(fontSize: 14.0),
                  overflow: TextOverflow.visible,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  launch(links[i]);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 183, 69, 145)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15), // Adjust the border radius as needed
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(60, 8)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(2.0)),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                child: Text('View on Map'),
              ),
            ],
          ),
        ),
      );

      rectangleBoxes.add(box);
    }

    return Column(
      children: rectangleBoxes,
    );
  }
}
