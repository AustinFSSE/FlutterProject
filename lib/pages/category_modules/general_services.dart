
import 'package:constructionapp/pages/service_forms/electrical.dart';
import 'package:constructionapp/pages/service_forms/hvac.dart';
import 'package:constructionapp/pages/service_forms/plumbing.dart';
import 'package:constructionapp/pages/service_forms/roofing.dart';
import 'package:flutter/material.dart';


class GeneralServices {
  double size;
  double elevation;
  double iconsize;
  Widget forum;
  String iconpath;
  String text;
  GeneralServices({
    required this.iconsize,
    required this.forum,
    required this.size,
    required this.iconpath,
    required this.elevation,
    required this.text,
  });

  static List<GeneralServices> getGeneralServices() {
    List<GeneralServices> generalServices = [];

    generalServices.add(
      GeneralServices(
          iconsize: 75,
          forum: const HVACForum(),
          size: 75,
          iconpath: 'assets/icons/HVAC.svg',
          elevation: 4,
          text: 'HVAC'
      )
    );
    generalServices.add(
      GeneralServices(
        iconsize: 75,
        forum: const PlumbingForum(),
        size: 75,
        iconpath: 'assets/icons/plumbing.svg',
        elevation: 4.0,
        text: 'Plumbing'
      )
    );
    generalServices.add(
        GeneralServices(
          iconsize: 75,
          forum: const RoofingForum(),
          size: 75,
          iconpath: 'assets/icons/roofing.svg',
          elevation: 4.0,
          text: 'Roofing'
        )
    );
    generalServices.add(
        GeneralServices(
          iconsize: 75,
          forum: const ElectricalForum(),
          size: 75,
          iconpath: 'assets/icons/electrical.svg',
          elevation: 4.0,
          text: 'Electrical'
        )
    );
    generalServices.add(
        GeneralServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/garage.svg',
            elevation: 4,
            text: 'Garage'
        )
    );
    return generalServices;
  }

}