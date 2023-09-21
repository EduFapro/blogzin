import '../models/livro_model.dart';

final List<LivroModel> listaLivros = [
  LivroModel(
    "Head First Object Oriented Analysis and Desin",
    '600',
    'Brett McLaughlin',
    '978-0596008673',
    ("https://m.media-amazon.com/images/I/91mi4Cysj-L._SL1500_.jpg" ??
        "https://learning.oreilly.com/library/cover/0596008678/250w/"),
  ),
  LivroModel(
      "Django 4 for the Impatient",
      "190",
      "Greg Lim",
      "978-1803245836",
      "https://m.media-amazon.com/images/I/618s3QPhWQL._SY385_.jpg" ??
          "https://content.packt.com/B18667/cover_image_small.jpg")
];
