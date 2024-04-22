//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketTypeRead {
  /// Returns a new [TicketTypeRead] instance.
  TicketTypeRead({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    this.description,
  });

  /// Returns a new [TicketTypeRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketTypeRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketTypeRead(
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

    return other is TicketTypeRead &&
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

  static List<TicketTypeRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketTypeRead>[];
    }

    return json.fold(<TicketTypeRead>[],
        (List<TicketTypeRead> previousValue, element) {
      final TicketTypeRead? object = TicketTypeRead.fromJson(element);
      if (object is TicketTypeRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketTypeRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketTypeRead>{};
    }

    return json.entries.fold(<String, TicketTypeRead>{},
        (Map<String, TicketTypeRead> previousValue, element) {
      final TicketTypeRead? object = TicketTypeRead.fromJson(element.value);
      if (object is TicketTypeRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketTypeRead-objects as value to a dart map
  static Map<String, List<TicketTypeRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketTypeRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketTypeRead>>(
          key, TicketTypeRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketTypeRead[id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, description=$description]';

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
