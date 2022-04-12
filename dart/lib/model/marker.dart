//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Marker {
  /// Returns a new [Marker] instance.
  Marker({
    this.links,
    this.id,
    required this.point,
    this.type,
  });

  /// Returns a new [Marker] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Marker? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Marker(
      links: MarkerLinks.fromJson(json[r'_links']),
      id: json[r'id'],
      point: Point.fromJson(json[r'point'])!,
      type: json[r'type'],
    );
  }

  MarkerLinks? links;

  final String? id;

  Point point;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Marker &&
        other.links == links &&
        other.id == id &&
        other.point == point &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (id == null ? 0 : id.hashCode) +
      point.hashCode +
      (type == null ? 0 : type.hashCode);

  static List<Marker> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Marker>[];
    }
    return json
        .map((value) {
          return Marker.fromJson(value);
        })
        .whereType<Marker>()
        .toList();
  }

  static Map<String, Marker> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Marker>{};
    }

    final map = json.map(
        (key, value) => MapEntry<String, Marker?>(key, Marker.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Marker>;
  }

  // maps a json object with a list of Marker-objects as value to a dart map
  static Map<String, List<Marker>> mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<Marker>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Marker.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'Marker[links=$links, id=$id, point=$point, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (id != null) r'id': id,
      r'point': point,
      if (type != null) r'type': type,
    };
  }
}
