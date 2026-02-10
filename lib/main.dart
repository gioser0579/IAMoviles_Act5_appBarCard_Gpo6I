import 'package:flutter/material.dart';

void main() => runApp(AppClinicadental());

class AppClinicadental extends StatelessWidget {
  const AppClinicadental({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clinica dental",
      home: Paciente(),
    ); //Material app
  }
} // fin clase Appclinicadental

class Paciente extends StatefulWidget {
  const Paciente({super.key});

  @override
  State<Paciente> createState() => _PacienteState();
}

class _PacienteState extends State<Paciente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paciente Gioser Fisher'),
        backgroundColor: Colors.purpleAccent,
          actions: [
    Icon(Icons.bedroom_child),
    Icon(Icons.flight),
  ],
        
      ),
      drawer: Drawer(),
      body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 350,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          // Degradado guinda oscuro
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF800020), // Guinda base
              Color(0xFF3B000E), // Guinda casi negro
            ],
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 15,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            // Avatar con imagen de red
            const CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white24,
              backgroundImage: NetworkImage(
              'https://raw.githubusercontent.com/gioser0579/IAMoviles_Act5_appBarCard/refs/heads/main/gioser.jpg'
              ),
            ),
            const SizedBox(width: 20),
            // Información del paciente
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Gioser Fisher',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Paciente',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
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
