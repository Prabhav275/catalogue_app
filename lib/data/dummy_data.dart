import '../models/collection.dart';

final List<Collection> collections = List.generate(
  7,
  (index) => Collection(
    title: 'Collection ${index + 1}',
    images: [
      'https://picsum.photos/200?random=${index}1',
      'https://picsum.photos/200?random=${index}2',
      'https://picsum.photos/200?random=${index}3',
      'https://picsum.photos/200?random=${index}4',
      'https://picsum.photos/200?random=${index}5',
      'https://picsum.photos/200?random=${index}6',
    ],
  ),
);