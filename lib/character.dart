class Character {
  final int id;
  final String name;
  final String type;
  final String species;
  final String gender;
  final String status;

  Character({
    required this.id,
    required this.name,
    required this.type,
    required this.species,
    required this.gender,
    required this.status,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      species: json['species'],
      gender: json['gender'],
      status: json['status'],
    );
  }
}

