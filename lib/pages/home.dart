import 'package:constructionapp/pages/category_modules/fixtures_services.dart';
import 'package:constructionapp/pages/category_modules/general_services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../backend%20services/auth_page.dart' show AuthPage;
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GeneralServices> generalServices = [];
  List<FixtureServices> fixtureServices = [];
  void _getInfo() {
    generalServices = GeneralServices.getGeneralServices();
    fixtureServices = FixtureServices.getFixtureServices();
  }
  @override
  Widget build(BuildContext context) {
    _getInfo();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange[400],
        shadowColor: Colors.black,
        elevation: 4,
        title: const Text('Contracting, USA'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                // do something
              },
              icon: const Icon(Icons.share),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AuthPage(),
              ),
            ),
            icon: const Icon(Icons.person),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          _services(),
          const SizedBox(height: 15,),


          // General Services
          SizedBox(
            height: 160,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 25),
                   height: generalServices[index].size,
                   width: generalServices[index].size,
                   decoration: BoxDecoration(
                       color: Colors.grey.shade400,
                       borderRadius: BorderRadius.circular(15),
                       shape: BoxShape.rectangle,
                       boxShadow: const [
                         BoxShadow(
                           color: Colors.black,
                           offset: Offset(5, 5),
                           blurRadius: 10.0,
                           spreadRadius: 5.0,
                         ),
                       ],
                   ),
                   child: Column(
                     children: [
                       Builder(
                           builder: (context){
                             return GestureDetector(
                               onTap: (){
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => generalServices[index].forum,
                                   ),
                                 );
                               },
                               child: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Column(
                             children: [
                               SvgPicture.asset(
                                   generalServices[index].iconpath,
                                   height: generalServices[index].iconsize,
                                   width: generalServices[index].iconsize,
                                 ),
                                 Text(generalServices[index].text, style: const TextStyle(fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.bold),),
                                 ],
                               ),
                             ),
                             );
                          },
                        ),
                      ],
                   ),
                  );
                  },
                separatorBuilder: (context, index) => const SizedBox(width: 30),
                itemCount: generalServices.length,
              ),
            ),
          const SizedBox(height: 15,),

          // Fixture Services
          const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                'Fixtures',
                style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          const SizedBox(height: 5,),
          SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20, right: 20),
              itemBuilder: (context, index){
                return Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 25),
                  height: fixtureServices[index].size,
                  width: fixtureServices[index].size,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15),
                    shape: BoxShape.rectangle,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(5, 5),
                        blurRadius: 10.0,
                        spreadRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Builder(
                        builder: (context){
                          return GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => fixtureServices[index].forum,
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                          children: [
                            SvgPicture.asset(
                                fixtureServices[index].iconpath,
                                height: fixtureServices[index].iconsize,
                                width: fixtureServices[index].iconsize,
                              ),
                            Text(
                              fixtureServices[index].text,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            ),
                              ],
                            ),
                          ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 30),
              itemCount: fixtureServices.length,
            ),
          ),
        ],
      ),
    );
  }
}

Container _locationValidation() {
  // ignore: avoid_unnecessary_containers
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Enter your Address that needs Service',
            style: TextStyle(
              color: Color.fromARGB(255, 129, 128, 128),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.all(8),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(1),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on_sharp),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Column _services() {
  return Column(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10),
            child: Text(
              'Services',
              style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          _locationValidation(),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'General',
                      style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ],
  );
}
