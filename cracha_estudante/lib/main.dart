import 'package:flutter/material.dart';
import 'desafio_lista.dart';
import 'widgets/cartao_estudante.dart';

void main() {
  runApp(const MeuAppCracha());
}

class MeuAppCracha extends StatelessWidget {
  const MeuAppCracha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crachá Estudante',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      // Exercicio 08: Exibe a tela com a Column dos 3 crachas diferentes
      home: const DesafioListaScreen(),
    );
  }
}
