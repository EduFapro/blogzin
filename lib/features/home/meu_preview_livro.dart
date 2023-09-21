import 'package:flutter/material.dart';
import 'package:web_blog/core/data/models/livro_model.dart';

class MeuPreviewLivro extends StatelessWidget {
  final LivroModel livro;

  const MeuPreviewLivro({super.key, required this.livro});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.greenAccent,
      child: Row(
        children: [
          Image.network(livro.capa),
          Text(livro.titulo),
        ],
      ),
    );
  }
}
