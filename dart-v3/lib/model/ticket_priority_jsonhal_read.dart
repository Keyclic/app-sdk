//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketPriorityJsonhalRead {
  /// Returns a new [TicketPriorityJsonhalRead] instance.
  TicketPriorityJsonhalRead({
    this.links,
    this.color,
    this.name,
    this.id,
    this.position,
  });

  /// Returns a new [TicketPriorityJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketPriorityJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketPriorityJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      color: json[r'color'],
      name: json[r'name'],
      id: json[r'id'],
      position: json[r'position'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? color;

  String? name;

  /// The resource identifier.
  final String? id;

  int? position;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketPriorityJsonhalRead &&
        other.links == links &&
        other.color == color &&
        other.name == name &&
        other.id == id &&
        other.position == position;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (color == null ? 0 : color.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (position == null ? 0 : position.hashCode);

  static List<TicketPriorityJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketPriorityJsonhalRead>[];
    }

    return json.fold(<TicketPriorityJsonhalRead>[],
        (List<TicketPriorityJsonhalRead> previousValue, element) {
      final TicketPriorityJsonhalRead? object =
          TicketPriorityJsonhalRead.fromJson(element);
      if (object is TicketPriorityJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketPriorityJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketPriorityJsonhalRead>{};
    }

    return json.entries.fold(<String, TicketPriorityJsonhalRead>{},
        (Map<String, TicketPriorityJsonhalRead> previousValue, element) {
      final TicketPriorityJsonhalRead? object =
          TicketPriorityJsonhalRead.fromJson(element.value);
      if (object is TicketPriorityJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketPriorityJsonhalRead-objects as value to a dart map
  static Map<String, List<TicketPriorityJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketPriorityJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketPriorityJsonhalRead>>(
          key, TicketPriorityJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketPriorityJsonhalRead[links=$links, color=$color, name=$name, id=$id, position=$position]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'color')) r'color': color,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'position')) r'position': position,
    };
  }
}
