//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MarkerJsonhalRead {
  /// Returns a new [MarkerJsonhalRead] instance.
  MarkerJsonhalRead({
    required this.point,
    required this.id,
  });

  /// Returns a new [MarkerJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MarkerJsonhalRead(
      point: PointJsonhalRead.fromJson(json[r'point'])!,
      id: json[r'id'],
    );
  }

  PointJsonhalRead point;

  /// The resource identifier.
  final String id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerJsonhalRead && other.point == point && other.id == id;
  }

  @override
  int get hashCode => point.hashCode + id.hashCode;

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
  String toString() => 'MarkerJsonhalRead[point=$point, id=$id]';

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
