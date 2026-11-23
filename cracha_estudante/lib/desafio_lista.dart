import 'package:flutter/material.dart';
import 'widgets/cartao_estudante.dart';

class DesafioListaScreen extends StatelessWidget {
  const DesafioListaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crachás Estudantis - Lista'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          // Exercicio 08: Column com 3 crachas diferentes e espacamentos entre eles
          child: Column(
            children: const [
              CartaoEstudante(
                nome: 'Caio Silva',
                curso: 'Análise e Desenvolvimento de Sistemas',
                ra: '2026001',
                email: 'caio.silva@estudante.edu.br',
                fotoUrl: 'https://i.pravatar.cc/150?img=11',
              ),
              SizedBox(height: 20),
              CartaoEstudante(
                nome: 'Mariana Costa',
                curso: 'Engenharia de Software',
                ra: '2026002',
                email: 'mariana.costa@estudante.edu.br',
                fotoUrl: 'https://i.pravatar.cc/150?img=5',
              ),
              SizedBox(height: 20),
              CartaoEstudante(
                nome: 'Lucas Oliveira',
                curso: 'Ciência da Computação',
                ra: '2026003',
                email: 'lucas.oliveira@estudante.edu.br',
                fotoUrl: 'https://i.pravatar.cc/150?img=12',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
