//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MarkerJsonhalRead {
  /// Returns a new [MarkerJsonhalRead] instance.
  MarkerJsonhalRead({
    this.links,
    this.point,
    this.id,
  });

  /// Returns a new [MarkerJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      point: PointJsonhalRead.fromJson(json[r'point']),
      id: json[r'id'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  PointJsonhalRead? point;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerJsonhalRead &&
        other.links == links &&
        other.point == point &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (point == null ? 0 : point.hashCode) +
      (id == null ? 0 : id.hashCode);

  static List<MarkerJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MarkerJsonhalRead>[];
    }

    return json.fold(<MarkerJsonhalRead>[],
        (List<MarkerJsonhalRead> previousValue, element) {
      final MarkerJsonhalRead? object = MarkerJsonhalRead.fromJson(element);
      if (object is MarkerJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerJsonhalRead>{};
    }

    return json.entries.fold(<String, MarkerJsonhalRead>{},
        (Map<String, MarkerJsonhalRead> previousValue, element) {
      final MarkerJsonhalRead? object =
          MarkerJsonhalRead.fromJson(element.value);
      if (object is MarkerJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerJsonhalRead-objects as value to a dart map
  static Map<String, List<MarkerJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerJsonhalRead>>(
          key, MarkerJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerJsonhalRead[links=$links, point=$point, id=$id]';

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
      if (keys == null || keys.any((key) => RegExp(r'^point\.').hasMatch(key)))
        r'point': point?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^point\.'))) {
            previousValue.add(element.split(RegExp(r'^point\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'id')) r'id': id,
    };
  }
}
