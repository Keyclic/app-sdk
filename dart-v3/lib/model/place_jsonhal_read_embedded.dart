//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceJsonhalReadEmbedded {
  /// Returns a new [PlaceJsonhalReadEmbedded] instance.
  PlaceJsonhalReadEmbedded({
    this.state,
  });

  /// Returns a new [PlaceJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceJsonhalReadEmbedded(
      state: WorkflowStateJsonhalRead.fromJson(json[r'state']),
    );
  }

  WorkflowStateJsonhalRead? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceJsonhalReadEmbedded && other.state == state;
  }

  @override
  int get hashCode => (state == null ? 0 : state.hashCode);

  static List<PlaceJsonhalReadEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceJsonhalReadEmbedded>[];
    }

    return json.fold(<PlaceJsonhalReadEmbedded>[],
        (List<PlaceJsonhalReadEmbedded> previousValue, element) {
      final PlaceJsonhalReadEmbedded? object =
          PlaceJsonhalReadEmbedded.fromJson(element);
      if (object is PlaceJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, PlaceJsonhalReadEmbedded>{},
        (Map<String, PlaceJsonhalReadEmbedded> previousValue, element) {
      final PlaceJsonhalReadEmbedded? object =
          PlaceJsonhalReadEmbedded.fromJson(element.value);
      if (object is PlaceJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<PlaceJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceJsonhalReadEmbedded>>(
          key, PlaceJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'PlaceJsonhalReadEmbedded[state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
