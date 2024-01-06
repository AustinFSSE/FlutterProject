
import 'package:constructionapp/pages/service_forms/electrical.dart';
import 'package:constructionapp/pages/service_forms/hvac.dart';
import 'package:constructionapp/pages/service_forms/plumbing.dart';
import 'package:constructionapp/pages/service_forms/roofing.dart';
import 'package:flutter/material.dart';

class InstallationServices {
  double size;
  double elevation;
  double iconsize;
  Widget forum;
  String iconpath;
  String text;

  InstallationServices({
    required this.iconsize,
    required this.forum,
    required this.size,
    required this.iconpath,
    required this.elevation,
    required this.text,
  });

  static List<InstallationServices> getInstallationServices() {
    List<InstallationServices> installationServices = [];

    installationServices.add(
        InstallationServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/office-chair.svg',
            elevation: 4,
            text: 'Office Chairs'
        )
    );
    installationServices.add(
        InstallationServices(
            iconsize: 75,
            forum: const PlumbingForum(),
            size: 75,
            iconpath: 'assets/icons/tv-stand(1).svg',
            elevation: 4.0,
            text: 'TV Stands'
        )
    );
    installationServices.add(
        InstallationServices(
            iconsize: 75,
            forum: const RoofingForum(),
            size: 75,
            iconpath: 'assets/icons/kitchen-table.svg',
            elevation: 4.0,
            text: 'Tables'
        )
    );
    installationServices.add(
        InstallationServices(
            iconsize: 75,
            forum: const ElectricalForum(),
            size: 75,
            iconpath: 'assets/icons/dresser.svg',
            elevation: 4.0,
            text: 'Dressers'
        )
    );
    installationServices.add(
        InstallationServices(
            iconsize: 75,
            forum: const HVACForum(),
            size: 75,
            iconpath: 'assets/icons/file-cabinet.svg',
            elevation: 4,
            text: 'File Cabinet'
        )
    );
    return installationServices;
  }
}