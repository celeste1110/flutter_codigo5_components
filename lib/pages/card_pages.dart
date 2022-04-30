import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(26.0),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(30),
              //
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  blurRadius: 1,
                  offset: const Offset(4, 4),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 6,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
            child: Column(
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.60),
                    fontSize: 14.0,
                    height: 1.3,
                    decoration: TextDecoration.none,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 6.0),
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurpleAccent.withOpacity(0.4),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: Text(
                    'Follow me',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 12.0,
            ),
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.07),
                  offset: const Offset(4, 4),
                  blurRadius: 12.0,
                )
              ],
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/item1.png',
                  height: 120.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Fiorella Guadalupe de las Nieves Azules',
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ultricies ac ante ac auctor. Vivamus condimentum tellus tellus. Aenean ullamcorper eget ipsum non malesuada. Nunc bibendum consequat consectetur. Vivamus vitae lorem arcu. Vestibulum in hendrerit lacus. Curabitur porta eget nulla ac congue. ',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.montserrat(
                          color: Colors.black.withOpacity(0.60),
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color:Colors.black.withOpacity(0.06) ,
                  blurRadius: 12,
                  offset: const Offset(4, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                // Container(
                //   height: 130.0,
                //   width: 130.0,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(12.0),
                //     image: DecorationImage(
                //       image: NetworkImage('https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',),
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                ClipRRect(
                   borderRadius:BorderRadius.circular(12.0),
                  child: Image.network(
                    'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&h=650&w=940',
                    height: 130.0,
                    width: 130.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Maecenas velit sem, bibendum at porttitor eu, feugiat vitae enim. Nunc at sodales dolor. In ornare vel ipsum vitae ornare. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
