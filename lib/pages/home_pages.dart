import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(4, 4),
                      blurRadius: 10.0,
                    ),
                  ]),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Flutter Components',
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                fontWeight: FontWeight.w200,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
