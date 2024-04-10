//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalSlaPolicyReadEmbedded {
  /// Returns a new [SlaPolicyJsonhalSlaPolicyReadEmbedded] instance.
  SlaPolicyJsonhalSlaPolicyReadEmbedded({
    this.fromStates,
    this.toStates,
  });

  /// Returns a new [SlaPolicyJsonhalSlaPolicyReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalSlaPolicyReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalSlaPolicyReadEmbedded(
      fromStates: json[r'fromStates'] == null
          ? null
          : List<String>.from(json[r'fromStates']),
      toStates: json[r'toStates'] == null
          ? null
          : List<String>.from(json[r'toStates']),
    );
  }

  List<String>? fromStates;

  List<String>? toStates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalSlaPolicyReadEmbedded &&
        DeepCollectionEquality.unordered()
            .equals(fromStates, other.fromStates) &&
        DeepCollectionEquality.unordered().equals(toStates, other.toStates);
  }

  @override
  int get hashCode =>
      (fromStates == null ? 0 : fromStates.hashCode) +
      (toStates == null ? 0 : toStates.hashCode);

  static List<SlaPolicyJsonhalSlaPolicyReadEmbedded> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <SlaPolicyJsonhalSlaPolicyReadEmbedded>[];
    }

    return json.fold(<SlaPolicyJsonhalSlaPolicyReadEmbedded>[],
        (List<SlaPolicyJsonhalSlaPolicyReadEmbedded> previousValue, element) {
      final SlaPolicyJsonhalSlaPolicyReadEmbedded? object =
          SlaPolicyJsonhalSlaPolicyReadEmbedded.fromJson(element);
      if (object is SlaPolicyJsonhalSlaPolicyReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalSlaPolicyReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalSlaPolicyReadEmbedded>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalSlaPolicyReadEmbedded>{},
        (Map<String, SlaPolicyJsonhalSlaPolicyReadEmbedded> previousValue,
            element) {
      final SlaPolicyJsonhalSlaPolicyReadEmbedded? object =
          SlaPolicyJsonhalSlaPolicyReadEmbedded.fromJson(element.value);
      if (object is SlaPolicyJsonhalSlaPolicyReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalSlaPolicyReadEmbedded-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalSlaPolicyReadEmbedded>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalSlaPolicyReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalSlaPolicyReadEmbedded>>(
          key, SlaPolicyJsonhalSlaPolicyReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalSlaPolicyReadEmbedded[fromStates=$fromStates, toStates=$toStates]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'fromStates'))
        r'fromStates': fromStates,
      if (keys == null || keys.contains(r'toStates')) r'toStates': toStates,
    };
  }
}
