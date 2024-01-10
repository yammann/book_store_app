import 'package:equatable/equatable.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? fullSortKey;
  final String? title;
  final String? url;
  final String? coverColor;
  final String? author;
  final String? cover;
  final String? epoch;
  final String? href;
  final bool? hasAudio;
  final String? genre;
  final String? simpleThumb;
  final String? slug;
  final String? coverThumb;
  final dynamic liked;

  const BookModel({
    this.kind,
    this.fullSortKey,
    this.title,
    this.url,
    this.coverColor,
    this.author,
    this.cover,
    this.epoch,
    this.href,
    this.hasAudio,
    this.genre,
    this.simpleThumb,
    this.slug,
    this.coverThumb,
    this.liked,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        fullSortKey: json['full_sort_key'] as String?,
        title: json['title'] as String?,
        url: json['url'] as String?,
        coverColor: json['cover_color'] as String?,
        author: json['author'] as String?,
        cover: json['cover'] as String?,
        epoch: json['epoch'] as String?,
        href: json['href'] as String?,
        hasAudio: json['has_audio'] as bool?,
        genre: json['genre'] as String?,
        simpleThumb: json['simple_thumb'] as String?,
        slug: json['slug'] as String?,
        coverThumb: json['cover_thumb'] as String?,
        liked: json['liked'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'full_sort_key': fullSortKey,
        'title': title,
        'url': url,
        'cover_color': coverColor,
        'author': author,
        'cover': cover,
        'epoch': epoch,
        'href': href,
        'has_audio': hasAudio,
        'genre': genre,
        'simple_thumb': simpleThumb,
        'slug': slug,
        'cover_thumb': coverThumb,
        'liked': liked,
      };

  @override
  List<Object?> get props {
    return [
      kind,
      fullSortKey,
      title,
      url,
      coverColor,
      author,
      cover,
      epoch,
      href,
      hasAudio,
      genre,
      simpleThumb,
      slug,
      coverThumb,
      liked,
    ];
  }
}
