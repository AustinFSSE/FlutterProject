

import 'package:constructionapp/pages/service_forms/hvac.dart';
import 'package:flutter/material.dart';

class FixtureServices {
  double size;
  double elevation;
  double iconsize;
  Widget forum;
  String iconpath;
  String text;
  FixtureServices({
    required this.iconsize,
    required this.forum,
    required this.size,
    required this.iconpath,
    required this.elevation,
    required this.text,
  });
  
  static List<FixtureServices> getFixtureServices() {
    List<FixtureServices> fixtureServices = [];
    fixtureServices.add(
      FixtureServices(
          iconsize: 75,
          forum: const HVACForum(),
          size: 75,
          iconpath: 'assets/icons/window.svg',
          elevation: 4.0,
          text: 'Window Blinds'
      )
    );
    fixtureServices.add(
        FixtureServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/indoor_lights.svg',
            elevation: 4.0,
            text: 'Indoor Lights'
        )
    );
    fixtureServices.add(
        FixtureServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/ceiling_fan.svg',
            elevation: 4.0,
            text: 'Ceiling Fans'
        )
    );
    fixtureServices.add(
        FixtureServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/outside_lights.svg',
            elevation: 4.0,
            text: 'Outside Lights'
        )
    );
    fixtureServices.add(
        FixtureServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/shelves.svg',
            elevation: 4.0,
            text: 'Shelving'
        )
    );
    return fixtureServices;
  }
}