//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractTypeRead {
  /// Returns a new [ContractTypeRead] instance.
  ContractTypeRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    this.description,
  });

  /// Returns a new [ContractTypeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractTypeRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractTypeRead(
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      name: json[r'name'],
      description: json[r'description'],
    );
  }

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String name;

  String? description;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractTypeRead &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name &&
        other.description == description;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      name.hashCode +
      (description == null ? 0 : description.hashCode);

  static List<ContractTypeRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContractTypeRead>[];
    }

    return json.fold(<ContractTypeRead>[],
        (List<ContractTypeRead> previousValue, element) {
      final ContractTypeRead? object = ContractTypeRead.fromJson(element);
      if (object is ContractTypeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractTypeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractTypeRead>{};
    }

    return json.entries.fold(<String, ContractTypeRead>{},
        (Map<String, ContractTypeRead> previousValue, element) {
      final ContractTypeRead? object = ContractTypeRead.fromJson(element.value);
      if (object is ContractTypeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractTypeRead-objects as value to a dart map
  static Map<String, List<ContractTypeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractTypeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractTypeRead>>(
          key, ContractTypeRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractTypeRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, description=$description]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      r'name': name,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
    };
  }
}
