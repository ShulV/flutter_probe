class Spot {
  const Spot({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.accepted,
    required this.addingDate,
    required this.updatingDate,
    required this.description
});

  final num id;

  final String name;

  final double latitude;

  final double longitude;

  final bool accepted;

  final DateTime addingDate;

  final DateTime updatingDate;

  final String description;
}