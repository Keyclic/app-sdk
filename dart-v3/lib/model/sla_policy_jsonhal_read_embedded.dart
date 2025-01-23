//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalReadEmbedded {
  /// Returns a new [SlaPolicyJsonhalReadEmbedded] instance.
  SlaPolicyJsonhalReadEmbedded({
    this.fromStates,
    this.toStates,
  });

  /// Returns a new [SlaPolicyJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalReadEmbedded(
      fromStates: json[r'fromStates'] == null
          ? null
          : List<String>.from(json[r'fromStates']),
      toStates: json[r'toStates'] == null
          ? null
          : List<String>.from(json[r'toStates']),
    );
  }

  final List<String>? fromStates;

  final List<String>? toStates;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SlaPolicyJsonhalReadEmbedded &&
        DeepCollectionEquality.unordered()
            .equals(fromStates, other.fromStates) &&
        DeepCollectionEquality.unordered().equals(toStates, other.toStates);
  }

  @override
  int get hashCode =>
      (fromStates == null ? 0 : fromStates.hashCode) +
      (toStates == null ? 0 : toStates.hashCode);

  static List<SlaPolicyJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <SlaPolicyJsonhalReadEmbedded>[];
    }

    return json.fold(<SlaPolicyJsonhalReadEmbedded>[],
        (List<SlaPolicyJsonhalReadEmbedded> previousValue, element) {
      final SlaPolicyJsonhalReadEmbedded? object =
          SlaPolicyJsonhalReadEmbedded.fromJson(element);
      if (object is SlaPolicyJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SlaPolicyJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SlaPolicyJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, SlaPolicyJsonhalReadEmbedded>{},
        (Map<String, SlaPolicyJsonhalReadEmbedded> previousValue, element) {
      final SlaPolicyJsonhalReadEmbedded? object =
          SlaPolicyJsonhalReadEmbedded.fromJson(element.value);
      if (object is SlaPolicyJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SlaPolicyJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<SlaPolicyJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SlaPolicyJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SlaPolicyJsonhalReadEmbedded>>(
          key, SlaPolicyJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'SlaPolicyJsonhalReadEmbedded[fromStates=$fromStates, toStates=$toStates]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'fromStates'))
        r'fromStates': fromStates,
      if (keys == null || keys.contains(r'toStates')) r'toStates': toStates,
    };
  }
}
