import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> superheroes = [
    'Superman',
    'Batman',
    'WonderWoman',
    'Flash',
    'Aquaman',
  ];
  Map<String, dynamic> prueba = {
    "items": [
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "Web Design",
        "name": "Wade Warren",
        "date": "07/14/2020",
        "status": "In Progress"
      },
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "Lexsas Application",
        "name": "Jacob Jones",
        "date": "07/14/2020",
        "status": "Completed"
      },
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "TODOS App",
        "name": "Bessie Cooper",
        "date": "07/14/2020",
        "status": "In Progress"
      },
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "Akeeva Feedbacks",
        "name": "Guy Hawkis",
        "date": "07/14/2020",
        "status": "In Progress"
      },
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "Design.com",
        "name": "Darlene Robertson",
        "date": "07/14/2020",
        "status": "Completed"
      },
      {
        "image": "https://picsum.photos/500/500/?image=",
        "prodession": "localz App",
        "name": "Theresa Webb",
        "date": "07/14/2020",
        "status": "In Progress"
      },
    ]
  };
  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      }
    ]
  };
  void showMyAlert3(Map<String, dynamic> hero) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                  hero["image"],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                hero["name"],
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              Text(
                hero["secretIdentity"],
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Edad: ' + hero["age"].toString(),
                style: GoogleFonts.poppins(
                    color: Color(0xff53658C),
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ...hero["powers"].map((e) => Text(e)).toList(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('ListPage'),
        centerTitle: true,
      ),
      // body: ListView.builder(
      //   itemCount: superheroes.length,
      //   itemBuilder: (BuildContext context, int index){
      //     return ListTile(
      //       title: Text(superheroes[index]),
      //       subtitle: const Text('Nombre'),
      //       trailing: IconButton(
      //         icon: Icon(Icons.delete),
      //         onPressed: (){
      //           superheroes.removeAt(index);
      //           setState(() {
      //
      //           });
      //
      //         },
      //       ),
      //     );
      //   },
      // ),
      // body: ListView.builder(
      //   itemCount: teamMap["members"].length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       title: Text(teamMap["members"][index]["name"]),
      //       subtitle: Text(teamMap["squadName"]),
      //       leading: CircleAvatar(
      //         radius: 30.0,
      //         backgroundImage: NetworkImage(
      //           teamMap["members"][index]["image"],
      //         ),
      //       ),
      //       trailing: IconButton(
      //         icon: Icon(Icons.remove_red_eye_sharp),
      //         onPressed: () {
      //           showMyAlert3(teamMap["members"][index]);
      //           setState(() {});
      //         },
      //       ),
      //     );
      //   },
      // ),

      // body: ListView.builder(
      //   itemCount: prueba["items"].length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      //       padding:
      //           const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
      //       decoration: BoxDecoration(color: Colors.white, boxShadow: [
      //         BoxShadow(
      //           color: Colors.black.withOpacity(0.05),
      //           blurRadius: 12,
      //           offset: const Offset(4, 4),
      //         ),
      //       ]),
      //       child: ListTile(
      //         title: Text(
      //           prueba["items"][index]["prodession"],
      //           style: GoogleFonts.montserrat(
      //             color: Color(0xff3E4752),
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //         subtitle: Text(
      //           prueba["items"][index]["name"],
      //           style: GoogleFonts.montserrat(
      //             color: Color(0xff3E4752).withOpacity(0.6),
      //             fontWeight: FontWeight.w400,
      //           ),
      //         ),
      //         leading: ClipRRect(
      //           borderRadius: BorderRadius.circular(10),
      //           child: Image.network(
      //             prueba["items"][index]["image"] + index.toString(),
      //             height: 60,
      //             width: 60,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         // CircleAvatar(
      //         //   radius: 30.0,
      //         //   backgroundImage: NetworkImage(
      //         //     prueba["items"][index]["image"]+(index+1).toString(),
      //         //   ),
      //         // ),
      //         trailing: Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Text(
      //               prueba["items"][index]["date"],
      //               style: GoogleFonts.montserrat(
      //                 color: Color(0xff3E4752),
      //                 fontWeight: FontWeight.w400,
      //               ),
      //             ),
      //
      //
      //                 Text(
      //                   prueba["items"][index]["status"],
      //                   style: GoogleFonts.montserrat(
      //                     color: Color(0xff3FC2A3),
      //                     fontWeight: FontWeight.w400,
      //                   ),
      //                 ),
      //
      //
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
            padding:
            const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 12,
                offset: const Offset(4, 4),
              ),
            ]),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    "https://picsum.photos/500/500/?image=$index",
                    height: 60.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Web Design",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff3E4752),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "Wade Warren",
                        style: GoogleFonts.montserrat(
                          color: Color(0xff3E4752).withOpacity(0.6),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "06/12/2022",
                      style: GoogleFonts.montserrat(
                        color: Color(0xff3E4752).withOpacity(0.45),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                            color: Color(0xff3FC2A3),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Completed",
                          style: GoogleFonts.montserrat(
                            color: Color(0xff3FC2A3),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
