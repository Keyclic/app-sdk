//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MarkerJsongeoRead {
  /// Returns a new [MarkerJsongeoRead] instance.
  MarkerJsongeoRead({
    required this.point,
    required this.id,
  });

  /// Returns a new [MarkerJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerJsongeoRead(
      point: PointJsongeoRead.fromJson(json[r'point'])!,
      id: json[r'id'],
    );
  }

  PointJsongeoRead point;

  /// The resource identifier.
  final String id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerJsongeoRead && other.point == point && other.id == id;
  }

  @override
  int get hashCode => point.hashCode + id.hashCode;

  static List<MarkerJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <MarkerJsongeoRead>[];
    }

    return json.fold(<MarkerJsongeoRead>[],
        (List<MarkerJsongeoRead> previousValue, element) {
      final MarkerJsongeoRead? object = MarkerJsongeoRead.fromJson(element);
      if (object is MarkerJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MarkerJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerJsongeoRead>{};
    }

    return json.entries.fold(<String, MarkerJsongeoRead>{},
        (Map<String, MarkerJsongeoRead> previousValue, element) {
      final MarkerJsongeoRead? object =
          MarkerJsongeoRead.fromJson(element.value);
      if (object is MarkerJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MarkerJsongeoRead-objects as value to a dart map
  static Map<String, List<MarkerJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MarkerJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MarkerJsongeoRead>>(
          key, MarkerJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'MarkerJsongeoRead[point=$point, id=$id]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'point': point.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^point\.'))) {
          previousValue.add(element.split(RegExp(r'^point\.')).last);
        }

        return previousValue;
      })),
      r'id': id,
    };
  }
}
