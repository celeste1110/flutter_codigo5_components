import 'package:flutter/material.dart';
import 'package:flutter_codigo5_components/pages/alert2_page.dart';
import 'package:flutter_codigo5_components/pages/reto1.dart';
import 'package:google_fonts/google_fonts.dart';

import 'alert_page.dart';
import 'avatar_page.dart';
import 'card_pages.dart';

class HomePages extends StatelessWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              const SizedBox(
                width: 160.0,
                child: Divider(
                  thickness: 0.45,
                ),
              ),
              ItemComponentWidget(
                title: 'Avatar',
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: 'Alert',
                toPage: AlertPage(),
              ),

              ItemComponentWidget(
                title: 'Cards',
                toPage: CardPage(),
              ),
              ItemComponentWidget(
                title: 'Reto1',
                toPage: Reto1Page(),
              ),

              //ItemComponentWidget(title: 'Alerta'),
              // ItemComponentWidget(title: 'Inputs'),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: Offset(4, 4),
              blurRadius: 12.0,
            ),
          ]),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => toPage));
        },
        leading: Icon(
          Icons.check_circle_outline,
          color: Color(0xff4A5467),
        ),
        title: Text(
          //'Avatar',
          title,
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text(
          'Ir al detalle de $title',
          style: GoogleFonts.poppins(
            fontSize: 13.0,
          ),
        ),
        trailing: Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
