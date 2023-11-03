//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Marker {
  /// Returns a new [Marker] instance.
  Marker({
    this.links,
    this.createdAt,
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

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    return Marker(
      links: MarkerLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      point: Point.fromJson(json[r'point'])!,
      type: json[r'type'],
    );
  }

  MarkerLinks? links;

  final DateTime? createdAt;

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
      point.hashCode +
      (type == null ? 0 : type.hashCode);

  static List<Marker> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Marker>[];
    }

    return json.fold(<Marker>[], (List<Marker> previousValue, element) {
      final Marker? object = Marker.fromJson(element);
      if (object is Marker) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Marker> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Marker>{};
    }

    return json.entries.fold(<String, Marker>{},
        (Map<String, Marker> previousValue, element) {
      final Marker? object = Marker.fromJson(element.value);
      if (object is Marker) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Marker-objects as value to a dart map
  static Map<String, List<Marker>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Marker>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Marker>>(key, Marker.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Marker[links=$links, createdAt=$createdAt, id=$id, point=$point, type=$type]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'point': point.toJson(),
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
    };
  }
}
