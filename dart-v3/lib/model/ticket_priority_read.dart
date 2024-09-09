//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketPriorityRead {
  /// Returns a new [TicketPriorityRead] instance.
  TicketPriorityRead({
    this.color,
    required this.name,
    this.id,
    this.position,
  });

  /// Returns a new [TicketPriorityRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketPriorityRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketPriorityRead(
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

    return other is TicketPriorityRead &&
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

  static List<TicketPriorityRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketPriorityRead>[];
    }

    return json.fold(<TicketPriorityRead>[],
        (List<TicketPriorityRead> previousValue, element) {
      final TicketPriorityRead? object = TicketPriorityRead.fromJson(element);
      if (object is TicketPriorityRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketPriorityRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketPriorityRead>{};
    }

    return json.entries.fold(<String, TicketPriorityRead>{},
        (Map<String, TicketPriorityRead> previousValue, element) {
      final TicketPriorityRead? object =
          TicketPriorityRead.fromJson(element.value);
      if (object is TicketPriorityRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketPriorityRead-objects as value to a dart map
  static Map<String, List<TicketPriorityRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketPriorityRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketPriorityRead>>(
          key, TicketPriorityRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketPriorityRead[color=$color, name=$name, id=$id, position=$position]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'color')) r'color': color,
      r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'position')) r'position': position,
    };
  }
}
