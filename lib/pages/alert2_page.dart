import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert2Page extends StatelessWidget {
  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext build) {
        return AlertDialog(
          title: Text(
            'Caregiver Review',
            textAlign: TextAlign.center,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                thickness: 0.8,
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Check_green_icon.svg/2048px-Check_green_icon.svg.png',
                height: 90.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                'Amanda Johnson',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                height: 3.0,
              ),
              Text(
                'Rate the care provided Sunday , Jan 9',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 30,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.black12,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                color: Color(0xffF7F9FC),
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                height: 100,
                width: double.infinity,
                child: Text(
                  'Additional Comments..',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Color(0xff949FB9),
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Not Now',
                      style: GoogleFonts.poppins(
                        color: Color(0xff5F7CAF),
                        fontWeight: FontWeight.w600,
                        fontSize: 13.0
                      ),
                    ),
                  ),
                  MaterialButton(
                    color: Color(0xff6F8FC5),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Submit Review',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13.0

                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: [
            //Text('Aceptar'),
            //Text('Aceptar2'),

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
                showMyAlert(context);
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
