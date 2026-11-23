import 'package:flutter/material.dart';

class CartaoEstudante extends StatelessWidget {
  final String nome;
  final String curso;
  final String ra;
  final String email;
  final String fotoUrl;

  const CartaoEstudante({
    super.key,
    required this.nome,
    required this.curso,
    required this.ra,
    required this.email,
    required this.fotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50, // Exercicio 01: fundo verde claro
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green, width: 1.5),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      // Exercicio 05: Column envolvida em Padding extra de 8 pixels em todos os lados
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Exercicio 03: CircleAvatar com foregroundImage usando NetworkImage
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green.shade200,
              foregroundImage: NetworkImage(fotoUrl),
              child: const Icon(Icons.person, size: 40, color: Colors.green),
            ),
            const SizedBox(height: 12),
            Text(
              nome,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              curso,
              style: TextStyle(
                fontSize: 14,
                color: Colors.green.shade900,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(height: 24, color: Colors.green),
            Row(
              children: [
                const Icon(Icons.badge, color: Colors.green, size: 20), // Exercicio 01
                const SizedBox(width: 8),
                Text('RA: $ra'),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.email, color: Colors.green, size: 20), // Exercicio 01
                const SizedBox(width: 8),
                Expanded(child: Text(email)),
              ],
            ),
            const SizedBox(height: 8),
            // Exercicio 02: Nova Row abaixo do e-mail com Icons.check_circle
            const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green, size: 20),
                SizedBox(width: 8),
                Text(
                  'Status: Matriculado / Ativo',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Exercicio 06: Rodape com ElevatedButton "Validar Carteirinha"
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Validar Carteirinha'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
