import 'package:flutter/material.dart';
import 'tela_inicio.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
      
  }
}

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

   final String emailCorreto = "rick@senai.com";
   final String senhaCorreta = "1234";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
          'Login',
          style: TextStyle(color: Colors.amberAccent), // Cor do texto da AppBar
        ),
        centerTitle: true, // Centraliza o título
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Define a cor da AppBar
        elevation: 4, // Sombra abaixo da AppBar
      ),
      backgroundColor: const Color.fromARGB(255, 56, 56, 56), 

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.asset(
              'lib/assets/avatar_D-removebg-preview.png',
              width: 350,
              height: 250,
            ),

            SizedBox(height: 24.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email',
              prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ) 
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: senhaController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Senha',
               prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
           SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                String senha = senhaController.text;

                if (email.isEmpty || senha.isEmpty){
                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Preencha todos os campos')),
                  ); 
                } else if(email != emailCorreto || senha != senhaCorreta){

                   ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Email ou senha incorreto')),
                  );
                  } else {
                Navigator.push(
                  context,
                   MaterialPageRoute(builder:(context) => TelaInicio()),
            );
                  }
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(233, 226, 222, 0), // Cor de fundo do botão
                foregroundColor: Colors.white, // Cor do texto do botão
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
             
            ), child: Text('login'),
            ),
          ],
        ),
      ),
    );
  }
}



















