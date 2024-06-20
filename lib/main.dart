import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323334),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Foto de perfil e publicações seguidores etc
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 8,
                      child: Stack(
                        children: [
                          Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage("lib/fotominha.jpeg"),
                              radius: 50,
                              backgroundColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text("Publicações",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text("Seguidores",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4),
                          child: Column(
                            children: [
                              Text(
                                "3",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text("Seguindo",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
                // Nome embaixo da foto
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Text(
                    "Gael Gomes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                // Espaçamento entre o nome e o arroba
                SizedBox(
                  height: 10,
                ),
                // Texto com borda do arroba
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFC7CBD4),
                      borderRadius: BorderRadius.circular(70),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5), // cor da sombra
                          spreadRadius: 1, // raio de propagação da sombra
                          blurRadius: 5, // raio de desfoque da sombra
                          offset: Offset(0, 3), // deslocamento da sombra
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.alternate_email),
                          Text(
                            " _gael.pimentel",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Botões de Editar perfil e compartilhar perfil
                Row(children: [
                  // Botão Editar
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                elevation:
                                    0, // ajuste o valor conforme necessário
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFFC7CBD4),
                              ),
                              child: const Text(
                                "Editar Perfil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
                  // Botão Compartilhar Perfil
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 30),
                                elevation:
                                    0, // ajuste o valor conforme necessário
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFFC7CBD4),
                              ),
                              child: const Text(
                                "Compartilhar Perfil",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
                  // Botão adicionar amigo (ícone)
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 20),
                        child: Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation:
                                    0, // ajuste o valor conforme necessário
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFFC7CBD4),
                              ),
                              child: Icon(
                                Icons.person_add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ]),
                // Destaques
                SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, top: 10),
                        child: Column(children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("lib/paisagem.jpeg"),
                            radius: 51,
                            backgroundColor: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Destaques",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    ),
                    // Novo
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: 35, top: 10),
                        child: Column(children: [
                          CircleAvatar(
                            radius: 51,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Color(0xFF323334),
                              child: Icon(
                                Icons.add,
                                size: 35,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Novo",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                // Feed ícones e fotos
                SizedBox(height: 40),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 70.0),
                          child: Container(
                            child: Icon(Icons.grid_on,
                                color: Colors.white, size: 40),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135.0),
                      child: Container(
                        child: Icon(Icons.airplay_outlined,
                            color: Colors.white, size: 40),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 135.0),
                      child: Container(
                        child: Icon(Icons.location_history_outlined,
                            color: Colors.white, size: 40),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    height: 1,
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Fotos do Feed
                Row(
                  children: [
                    Column(
                      children: [
                        // Foto 1 do Feed
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/foto1.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            height: 150,
                            width: 150,
                          ),
                        ),
                      ],
                    ),
                    // Foto 2 do Feed
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/foto2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ),
                    // Foto 3 do Feed
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("lib/foto3.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28),
                          child: Text(
                            "Complete seu perfil",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            "3 de 4 CONCLUÍDOS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
