import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String tiltle;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final int imageUrl;
  final int views;
  final DateTime createdAt;

  const Article(
      {required this.id,
      required this.tiltle,
      required this.subtitle,
      required this.body,
      required this.author,
      required this.authorImageUrl,
      required this.category,
      required this.imageUrl,
      required this.views,
      required this.createdAt});

  List<Object> get props => [
    id,
    tiltle,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    createdAt
  ];
}
