//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Marker {
  /// Returns a new [Marker] instance.
  Marker({
    this.links,
    this.createdAt,
    this.id,
    @required this.point,
    this.type,
  });

  /// Returns a new [Marker] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Marker.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    return Marker(
      links: MarkerLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      point: Point.fromJson(json[r'point']),
      type: json[r'type'],
    );
  }

  MarkerLinks links;

  DateTime createdAt;

  String id;

  Point point;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Marker &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.point == point &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (point == null ? 0 : point.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<Marker> listFromJson(List<dynamic> json) {
    return <Marker>[
      if (json is List)
        for (dynamic value in json) Marker.fromJson(value),
    ];
  }

  static Map<String, Marker> mapFromJson(Map<String, dynamic> json) {
    return <String, Marker>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Marker.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Marker-objects as value to a dart map
  static Map<String, List<Marker>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Marker>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Marker.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Marker[links=$links, createdAt=$createdAt, id=$id, point=$point, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      r'point': point,
      if (type != null) r'type': type,
    };
  }
}
