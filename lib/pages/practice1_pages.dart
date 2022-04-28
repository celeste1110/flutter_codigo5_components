import 'package:flutter/material.dart';

class Practice1Page extends StatelessWidget {
  const Practice1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F1F1),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 260.0,
              // color: Colors.lightBlueAccent,
              alignment: Alignment.center,
              child: Text(
                "Settings",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ],
              ),
            ),
            const  SizedBox(
              height: 10.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  Container(

                      padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff75A3F9),
                    ),
                    child: Icon(
                      Icons.wifi,
                      color: Colors.white,
                    ),
                  ),
                 const  SizedBox(
                    width: 20.0,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connections",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.72),
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text("Wi-fi Bluetooth Flight mode",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.35),
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const  SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(

                        padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.white,
                        ),
                      ),
                      const  SizedBox(
                        width: 20.0,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sounds and vibration",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text("Sounds mode Rigthone",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.35),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                  const  SizedBox(
                    height: 6.0,
                  ),
                  Divider(
                    indent: 50.0,
                  ),
                  const  SizedBox(
                    height: 6.0,
                  ),

                  Row(
                    children: [
                      Container(

                        padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.redAccent,
                        ),
                        child: Icon(
                          Icons.note,
                          color: Colors.white,
                        ),
                      ),

                      const  SizedBox(
                        width: 20.0,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notifications",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text("Status bar- Do not sturb",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.35),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const  SizedBox(
                    height: 20.0,
                  ),

                ],
              ),

            ),
            const  SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(

                        padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.lightGreen,
                        ),
                        child: Icon(
                          Icons.wb_incandescent,
                          color: Colors.white,
                        ),
                      ),
                      const  SizedBox(
                        width: 20.0,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Display",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.72),
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text("Brigtness Eye confort shield Navigation Bar",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.35),
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0,
                            ),
                          ),


                        ],

                      ),

                    ],
                  ),
                  const  SizedBox(
                    height: 6.0,
                  ),
                  Divider(
                    indent: 50.0,
                  ),

                ],
              ),


            ),
          ],
        ),
      ),
    );
  }
}
