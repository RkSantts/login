import 'package:flutter/material.dart';


class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TelaPage(),
      debugShowCheckedModeBanner: false,
    );
      
  }
}

class TelaPage extends StatelessWidget {
  const TelaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton( 
          icon: Icon(Icons.list, color: Color.fromARGB(255, 236, 236, 236)),
        onPressed: (){},
      ),
         title: Text(
          'Lista de Opções',
          style: TextStyle(color: const Color.fromARGB(255, 236, 236, 236)), // Cor do texto da AppBar
        ),
        centerTitle: true, // Centraliza o título
        backgroundColor: const Color.fromARGB(255, 168, 143, 2), // Define a cor da AppBar
        elevation: 4, // Sombra abaixo da AppBar
        actions: <Widget>[
         IconButton(
            icon: Icon(Icons.search, color: Color.fromARGB(255, 236, 236, 236)),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Escreva a tarefa',
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ) 
              ),
            ),
          ],
        ),
      ),
        );
  
  }
}



















