import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  void _showLoginDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Connexion réussie"),
          content: const Text("Vous êtes connecté avec succès!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(

      child : Column
      (mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
          SizedBox(
            height: 50,
          ),
          Text("Connexion",
          style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              labelText: 'Nom',
              border: OutlineInputBorder(),
            ),
            ),
          SizedBox(height: 20),

          TextField(
            decoration: InputDecoration(
              labelText: 'Mot de passe',
              border: OutlineInputBorder(),
            ),
            ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: (){
               _showLoginDialog(context);
            }, 
            child: Text(
              "Se connecter",
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF00ADB5),
              textStyle: TextStyle(fontSize: 20),
              elevation: 30,
            ),
            ),
            SizedBox(height: 20),
            TextButton(
            onPressed: (){}, 
            child: Text(
              "Mot de passe oublié",
          
            style: TextStyle(color: Colors.blueAccent),),
            
            )
            
      ],
      ),
    );
  }
}