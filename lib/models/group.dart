class Group {
  final String id;
  final String name;
  final String location;
  final int numberOfPeople;
  final DateTime createdAt;
  final String createdBy;
  final List<String> members;

  Group({
    required this.id,
    required this.name,
    required this.location,
    required this.numberOfPeople,
    required this.createdAt,
    required this.createdBy,
    required this.members,
  });

  Group copyWith({
    String? name, 
    String? location, 
    int? numberOfPeople,
    DateTime? createdAt,
    String? createdBy,
    List<String>? members,

  }) {
    return Group(
      id: id,
      name: name ?? this.name,
      location: location ?? this.location, 
      numberOfPeople: numberOfPeople ?? this.numberOfPeople,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      members: members ?? this.members,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'numberOfPeople': numberOfPeople,
      'createdAt': createdAt.toIso8601String(),
      'createdBy': createdBy,
      'members': members,
    };
  }

  factory Group.fromMap(Map<String, dynamic> map, String id) {
    return Group(
      id: id,
      name: map['name'] ?? '',
      location: map['location'] ?? '',
      numberOfPeople: map['numberOfPeople'] ?? 0,
      createdAt: DateTime.parse(map['createdAt'] ?? DateTime.now().toIso8601String()),
      createdBy: map['createdBy'] ?? '',
      members: List<String>.from(map['members'] ?? []),
    );
  }
}