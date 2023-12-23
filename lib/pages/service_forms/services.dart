import 'package:constructionapp/components/unique_service.dart';
import 'package:constructionapp/pages/service_forms/door.dart';
import 'package:constructionapp/pages/service_forms/electrical.dart';
import 'package:constructionapp/pages/service_forms/hvac.dart';
import 'package:constructionapp/pages/service_forms/plumbing.dart';
import 'package:constructionapp/pages/service_forms/roofing.dart';
import 'package:constructionapp/pages/service_forms/window.dart';
import 'package:flutter/material.dart';

class ServicesOffered extends StatefulWidget {
  const ServicesOffered({super.key});

  @override
  State<ServicesOffered> createState() => _ServicesOfferedState();
}

class _ServicesOfferedState extends State<ServicesOffered> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ServiceWidget(
                    iconsize: 50,
                    forum: const HVACForum(),
                    elevation: 4,
                    size: 50,
                    iconpath: 'assets/icons/HVAC.svg',
                  ),
                  const Text('HVAC')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ServiceWidget(
                    iconsize: 50,
                    forum: const PlumbingForum(),
                    size: 50,
                    iconpath: 'assets/icons/plumbing.svg',
                    elevation: 4,
                  ),
                  const Text('Plumbing')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ServiceWidget(
                    iconsize: 50,
                    forum: const RoofingForum(),
                    size: 50,
                    iconpath: 'assets/icons/roofing.svg',
                    elevation: 4,
                  ),
                  const Text('Roofing'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ServiceWidget(
                    iconsize: 50,
                    forum: const ElectricalForum(),
                    size: 50,
                    iconpath: 'assets/icons/electrical.svg',
                    elevation: 4,
                  ),
                  const Text('Electrical'),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Installation',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const DoorServiceForum(),
                      size: 50,
                      iconpath: 'assets/icons/door.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Doors',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/window.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Windows',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/furniture.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Furniture',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/shelves.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Shelves',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Custom Designs',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ServiceWidget(
                        iconsize: 50,
                        forum: const DoorServiceForum(),
                        size: 50,
                        iconpath: 'assets/icons/door.svg',
                        elevation: 4,
                      ),
                      const Text(
                        'Outdoor\nFurniture',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/window.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Outdoor\n\t\tSheds',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/furniture.svg',
                      elevation: 4,
                    ),
                    const Center(
                      child: Text(
                        'Above Ground\nFirepits',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/shelves.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Small\nPorches',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Remodeling',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const DoorServiceForum(),
                      size: 50,
                      iconpath: 'assets/icons/door.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Bathrooms',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/window.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Kitchens',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/furniture.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Cabinets',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ServiceWidget(
                      iconsize: 50,
                      forum: const WindowForum(),
                      size: 50,
                      iconpath: 'assets/icons/shelves.svg',
                      elevation: 4,
                    ),
                    const Text(
                      'Office/Bedrooms',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
