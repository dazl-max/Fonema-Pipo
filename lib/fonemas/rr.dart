import 'package:flutter/material.dart';

class RR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              'assets/imagens/fonemas.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.orange,
                size: 30,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "CA__LO",
                    style:
                        TextStyle(
                          fontSize: 120, 
                          fontWeight: 
                          FontWeight.bold
                          color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Opções de resposta
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: ["VA", "BA", "PA", "NA"].map((option) {
                    return ElevatedButton(
                      onPressed: () {
                        // lógica para verificar a resposta
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        option,
                        style: TextStyle(fontSize: 24, color: Colors.orange),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
