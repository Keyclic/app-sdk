//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketPriorityJsongeoRead {
  /// Returns a new [TicketPriorityJsongeoRead] instance.
  TicketPriorityJsongeoRead({
    this.color,
    required this.name,
    this.id,
    this.position,
  });

  /// Returns a new [TicketPriorityJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketPriorityJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketPriorityJsongeoRead(
      color: json[r'color'],
      name: json[r'name'],
      id: json[r'id'],
      position: json[r'position'],
    );
  }

  String? color;

  String name;

  /// The resource identifier.
  final String? id;

  int? position;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketPriorityJsongeoRead &&
        other.color == color &&
        other.name == name &&
        other.id == id &&
        other.position == position;
  }

  @override
  int get hashCode =>
      (color == null ? 0 : color.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (position == null ? 0 : position.hashCode);

  static List<TicketPriorityJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketPriorityJsongeoRead>[];
    }

    return json.fold(<TicketPriorityJsongeoRead>[],
        (List<TicketPriorityJsongeoRead> previousValue, element) {
      final TicketPriorityJsongeoRead? object =
          TicketPriorityJsongeoRead.fromJson(element);
      if (object is TicketPriorityJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketPriorityJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketPriorityJsongeoRead>{};
    }

    return json.entries.fold(<String, TicketPriorityJsongeoRead>{},
        (Map<String, TicketPriorityJsongeoRead> previousValue, element) {
      final TicketPriorityJsongeoRead? object =
          TicketPriorityJsongeoRead.fromJson(element.value);
      if (object is TicketPriorityJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketPriorityJsongeoRead-objects as value to a dart map
  static Map<String, List<TicketPriorityJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketPriorityJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketPriorityJsongeoRead>>(
          key, TicketPriorityJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketPriorityJsongeoRead[color=$color, name=$name, id=$id, position=$position]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'color')) r'color': color,
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'position')) r'position': position,
    };
  }
}
