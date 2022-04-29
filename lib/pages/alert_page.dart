import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Caregiver Review",
                style: GoogleFonts.poppins(
                  color: Color(0xff658BC9),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Color(0xff789BD6),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Icon(
                  Icons.person,
                  size: 40.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                "Amanda Johnson",
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              Text(
                "Rate the care provider Sunday, Jan 9",
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffFFBC6B),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xffDFE4ED),
                  ),
                ],
              ),
              const SizedBox(
                height: 12.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                height: 60.0,
                width: double.infinity,
                color: Color(0xffF7F9FC),
                child: Text(
                  "Additional Comments...",
                  style: GoogleFonts.poppins(
                    color: Color(0xff949FB9),
                    fontSize: 11.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Not Now",
                      style: GoogleFonts.poppins(
                        color: Color(0xff5F7CAF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: Color(0xff6F8FC5),
                    child: Text(
                      "Submit Review",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext build) {
        return AlertDialog(
          //title: Text('My Alert Dialog'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png',
                height: 90.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Flutter Alert',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33',
                style: GoogleFonts.poppins(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          actions: [
            //Text('Aceptar'),
            //Text('Aceptar2'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Aceptar',
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Alert Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert2(context);
              },
              child: Text(
                'Show Alert',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
