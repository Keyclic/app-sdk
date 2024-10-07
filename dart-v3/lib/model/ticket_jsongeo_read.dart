//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsongeoRead {
  /// Returns a new [TicketJsongeoRead] instance.
  TicketJsongeoRead({
    this.type = 'Feature',
    required this.geometry,
    this.properties = const {},
  });

  /// Returns a new [TicketJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsongeoRead(
      type: json[r'type'],
      geometry: TicketJsongeoReadGeometry.fromJson(json[r'geometry'])!,
      properties: Map<String, String>.from(json[r'properties']),
    );
  }

  String type;

  TicketJsongeoReadGeometry geometry;

  Map<String, String> properties;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsongeoRead &&
        other.type == type &&
        other.geometry == geometry &&
        DeepCollectionEquality.unordered().equals(properties, other.properties);
  }

  @override
  int get hashCode => type.hashCode + geometry.hashCode + properties.hashCode;

  static List<TicketJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketJsongeoRead>[];
    }

    return json.fold(<TicketJsongeoRead>[],
        (List<TicketJsongeoRead> previousValue, element) {
      final TicketJsongeoRead? object = TicketJsongeoRead.fromJson(element);
      if (object is TicketJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsongeoRead>{};
    }

    return json.entries.fold(<String, TicketJsongeoRead>{},
        (Map<String, TicketJsongeoRead> previousValue, element) {
      final TicketJsongeoRead? object =
          TicketJsongeoRead.fromJson(element.value);
      if (object is TicketJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsongeoRead-objects as value to a dart map
  static Map<String, List<TicketJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsongeoRead>>(
          key, TicketJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketJsongeoRead[type=$type, geometry=$geometry, properties=$properties]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'type': type,
      r'geometry': geometry.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^geometry\.'))) {
          previousValue.add(element.split(RegExp(r'^geometry\.')).last);
        }

        return previousValue;
      })),
      r'properties': properties,
    };
  }
}
