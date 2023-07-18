class Flower {
  final String imageUrl;
  final String name;
  final String moments;
  final double price;
  final String description;

  Flower({
    required this.imageUrl,
    required this.name,
    required this.moments,
    required this.price,
    required this.description,
  });
}

final List<Flower> flowers = [
  Flower(
    imageUrl: 'assets/images/flowers0.jpg',
    name: 'The Era',
    moments: 'Anniversaries',
    price: 41.99,
    description:
        'Flowers are a timeless and cherished gift for anniversaries, symbolizing love, beauty, and the celebration of a special milestone. Their vibrant colors and delicate petals serve as a visual representation of the love and admiration shared between two individuals, making them an ideal choice to commemorate the journey of togetherness.',
  ),
  Flower(
    imageUrl: 'assets/images/flowers1.jpg',
    name: 'The Potted',
    moments: 'New Beginning',
    price: 30.99,
    description:
        'Flowers in the context of new beginnings symbolize growth, beauty, optimism, and celebration. They contribute to the positive atmosphere surrounding new chapters in life and serve as a reminder of the potential for personal and professional development that lies ahead.',
  ),
  Flower(
    imageUrl: 'assets/images/flowers2.jpg',
    name: 'The Ceremony',
    moments: 'Ceremony',
    price: 53.09,
    description:
        'Flowers play a significant role in ceremonies as they enhance the visual appeal, add a touch of natural beauty, and convey symbolic meaning.',
  ),
  Flower(
    imageUrl: 'assets/images/flowers3.jpg',
    name: 'The Love',
    moments: 'Love',
    price: 36.99,
    description:
        'Flowers have long been associated with love and are considered a beautiful expression of affection and romance. They possess a unique language of their own, conveying heartfelt emotions without the need for words',
  )
];
