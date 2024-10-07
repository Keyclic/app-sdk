//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class SlaPolicyJsonhalReadEmbedded {
  /// Returns a new [SlaPolicyJsonhalReadEmbedded] instance.
  SlaPolicyJsonhalReadEmbedded({
    this.fromStates = const [],
    this.toStates = const [],
  });

  /// Returns a new [SlaPolicyJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SlaPolicyJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return SlaPolicyJsonhalReadEmbedded(
      fromStates: List<String>.from(json[r'fromStates']),
      toStates: List<String>.from(json[r'toStates']),
    );
  }

  List<String> fromStates;

  List<String> toStates;

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
  int get hashCode => fromStates.hashCode + toStates.hashCode;

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
      r'fromStates': fromStates,
      r'toStates': toStates,
    };
  }
}
