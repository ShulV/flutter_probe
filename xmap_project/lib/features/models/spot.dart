class Spot {
  const Spot({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.insertedAt,
    required this.updatedAt,
    required this.description
});

  final String id;

  final String name;

  final double latitude;

  final double longitude;

  final DateTime insertedAt;

  final DateTime updatedAt;

  final String description;
}