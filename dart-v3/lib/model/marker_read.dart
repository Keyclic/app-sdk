//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MarkerRead {
  /// Returns a new [MarkerRead] instance.
  MarkerRead({
    this.point,
    this.id,
  });

  /// Returns a new [MarkerRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerRead(
      point: PointRead.fromJson(json[r'point']),
      id: json[r'id'],
    );
  }

  PointRead? point;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerRead && other.point == point && other.id == id;
  }

  @override
  int get hashCode =>
      (point == null ? 0 : point.hashCode) + (id == null ? 0 : id.hashCode);

  static List<MarkerRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerRead>[];
    }

    return json.fold(<MarkerRead>[], (List<MarkerRead> previousValue, element) {
      final MarkerRead? object = MarkerRead.fromJson(element);
      if (object is MarkerRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerRead>{};
    }

    return json.entries.fold(<String, MarkerRead>{},
        (Map<String, MarkerRead> previousValue, element) {
      final MarkerRead? object = MarkerRead.fromJson(element.value);
      if (object is MarkerRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerRead-objects as value to a dart map
  static Map<String, List<MarkerRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerRead>>(
          key, MarkerRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerRead[point=$point, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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
