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

class TelaPage extends StatefulWidget {
  const TelaPage({super.key});

 @override
  State<TelaPage> createState() => _TelaPageState();
}

class _TelaPageState extends State<TelaPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tarefas = [];

  void adicionarTarefa() {
    String texto = _controller.text.trim();
    if (texto.isNotEmpty) {
      setState(() {
        _tarefas.add(texto);
        _controller.clear();
      });
    }
  }

 void removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton( 
          icon: Icon(Icons.list, color: Color.fromARGB(255, 236, 236, 236)),
        onPressed: (){},
      ),
         title: Text(
          'Lista de Tarefas',
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
               Row(
                   children: [
                Expanded(
                  child: TextFormField(
                     controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Escreva a tarefa',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add, color: Colors.white),
                  onPressed: adicionarTarefa ,
                ),
              ],
            ),
             SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _tarefas.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white10,
                    child: ListTile(
                      title: Text(
                        _tarefas[index],
                        style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => removerTarefa(index),
                        ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



















