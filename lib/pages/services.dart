import 'package:constructionapp/components/unique_service.dart';
import 'package:constructionapp/pages/door.dart';
import 'package:constructionapp/pages/electrical.dart';
import 'package:constructionapp/pages/hvac.dart';
import 'package:constructionapp/pages/plumbing.dart';
import 'package:constructionapp/pages/roofing.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
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
            Column(
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
            Column(
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
            Column(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
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
            ],
          ),
        ),
      ],
    );
  }
}
