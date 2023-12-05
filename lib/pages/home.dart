import 'package:flutter_svg/flutter_svg.dart';
import 'package:Constructionapp/pages/customer_support.dart';
import 'package:Constructionapp/pages/login_page.dart';
import 'package:Constructionapp/pages/get_a_quote.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
        elevation: 0,
        title: const Text('Contracting, USA'),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                // do something
              },
              icon: const Icon(Icons.share)),
          PopupMenuButton(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              const PopupMenuItem(value: 0, child: Text('Get a Quote')),
              const PopupMenuItem(
                value: 1,
                child: Text('Create an Account'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text(
                  'Having an Issue?',
                ),
              )
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          _searchField(),
          const SizedBox(
            height: 20,
          ),
          _locationValidation(),
          const SizedBox(
            height: 20,
          ),
          _services(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => GetQuote()),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Login()),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CustomerSupport()),
        );
        break;
    }
  }
}

Container _searchField() {
  return Container(
    margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
    decoration: BoxDecoration(boxShadow: [BoxShadow(color: const Color(0xff1D1617).withOpacity(0.25), blurRadius: 20, spreadRadius: 5.0)]),
    child: TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(8),
        hintText: 'Search for services & More',
        hintStyle: const TextStyle(color: Color(0xffDDDADA), fontSize: 14),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(1),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.black)),
      ),
    ),
  );
}

Container _locationValidation() {
  return Container(
    decoration: BoxDecoration(boxShadow: [BoxShadow(color: const Color(0xff1D1617).withOpacity(0.11), blurRadius: 40, spreadRadius: 5.0)]),
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
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(boxShadow: [BoxShadow(color: const Color(0xff1D1617).withOpacity(0.11), blurRadius: 40, spreadRadius: 5.0)]),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.transparent,
                contentPadding: const EdgeInsets.all(8),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(1),
                  child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(style: BorderStyle.solid, color: Colors.black))),
          ),
        ),
      ],
    ),
  );
}

Column _services() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Services',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: 125,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/icons/HVAC.svg'),
                  ),
                ),
                const Text('HVAC')
              ],
            ),
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/icons/plumbing.svg'),
                  ),
                ),
                const Text('Plumbing')
              ],
            ),
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/icons/roofing.svg'),
                  ),
                ),
                const Text('Roofing')
              ],
            ),
            Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/icons/electrical.svg'),
                  ),
                ),
                const Text('Electrical')
              ],
            ),
          ],
        ),
      )
    ],
  );
}
