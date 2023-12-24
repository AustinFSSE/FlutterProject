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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Text(
                      'HVAC',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  )
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Text(
                      'Plumbing',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  )
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Text(
                      'Roofing',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  )
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: const Text(
                      'Electrical',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Doors',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Windows',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Furniture',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Shelves',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: const Text(
                          'Outdoor Furniture',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                      )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Outdoor Sheds',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Above Ground Firepits',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Small Porches',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Bathrooms',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Kitchens',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Cabinets',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: const Text(
                        'Office/Bedrooms',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                        ),
                      ),
                    )
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
