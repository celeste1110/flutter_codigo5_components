import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool estado = true;

  IconData icono = Icons.remove_red_eye;
  String name = '';
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateTimeController = TextEditingController();
  String valueAux = 'Superman';
  List<String> superheroes = [
    'Superman',
    'wonder woman',
    'Batman',
  ];
  void cambiar_estado() {
    if (estado == true) {
      estado = false;
    } else {
      estado = true;
    }
  }

  void cambiar_icono() {
    if (estado == true) {
      icono = Icons.remove_moderator;
    } else {
      icono = Icons.remove_red_eye;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InputPage'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                maxLength: 20,
                cursorColor: Colors.deepPurpleAccent,
                style: const TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  label: const Text('Correo electronico'),
                  hintText: 'Ingresa tu correo',
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.35),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                  icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.alternate_email),
                  suffixIcon: Icon(Icons.email_outlined),
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar producto',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  enabled: true,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pinkAccent,
                      width: 2,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.check_circle_outline),
                  label: Text('Buscar'),
                  hintText: 'Ingresa el producto a buscar',
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Buscar producto..',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: Colors.black.withOpacity(0.37),
                    ),
                    suffixIcon: Container(
                        margin: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pinkAccent.withOpacity(0.4),
                              offset: const Offset(4, 4),
                              blurRadius: 7.0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                obscureText: estado,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  suffixIcon: IconButton(
                    icon: Icon(icono),
                    onPressed: () {
                      cambiar_estado();
                      cambiar_icono();
                      setState(() {});
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  label: Text('Ingresa tu nombre'),
                ),
                // onChanged: (String value) {
                //   name = value;
                // },
                // onTap: () {},
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Mostrar valor!',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _dateTimeController,
                toolbarOptions: ToolbarOptions(
                  copy: false,
                  cut: false,
                  paste: false,
                  selectAll: false,
                ),
                readOnly: true,
                decoration: InputDecoration(
                  hintText: 'Fecha de nacimiento',
                  suffixIcon: Icon(Icons.date_range),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              DropdownButton(
                value: valueAux,
                items: superheroes
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  valueAux = value.toString();
                  setState(() {});
                },
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    if (dateSelected != null) {
      _dateTimeController.text = dateSelected.toString().substring(0, 10);
    }
  }

  List<DropdownMenuItem<String>> getDataSuperheroe() {
    List<DropdownMenuItem<String>> items = [];
    superheroes.forEach((element) {
      items.add(
        DropdownMenuItem(
          child: Text(element),
          value: element,
        ),
      );
    });
    return items;
  }
}
