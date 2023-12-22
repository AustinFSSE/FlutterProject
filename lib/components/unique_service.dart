import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceWidget extends StatelessWidget {
  double size;
  double elevation;
  double iconsize;
  Widget forum;
  String iconpath;
  ServiceWidget({
    super.key,
    required this.iconsize,
    required this.forum,
    required this.size,
    required this.iconpath,
    required this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Builder(
        builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => forum,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              elevation: elevation,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                iconpath,
                height: iconsize,
                width: iconsize,
              ),
            ),
          );
        },
      ),
    );
  }
}
