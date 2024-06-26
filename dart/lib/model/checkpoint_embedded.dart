//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointEmbedded {
  /// Returns a new [CheckpointEmbedded] instance.
  CheckpointEmbedded({
    this.createdBy,
  });

  /// Returns a new [CheckpointEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CheckpointEmbedded(
      createdBy: Person.fromJson(json[r'createdBy']),
    );
  }

  Person? createdBy;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointEmbedded && other.createdBy == createdBy;
  }

  @override
  int get hashCode => (createdBy == null ? 0 : createdBy.hashCode);

  static List<CheckpointEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <CheckpointEmbedded>[];
    }

    return json.fold(<CheckpointEmbedded>[],
        (List<CheckpointEmbedded> previousValue, element) {
      final CheckpointEmbedded? object = CheckpointEmbedded.fromJson(element);
      if (object is CheckpointEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CheckpointEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointEmbedded>{};
    }

    return json.entries.fold(<String, CheckpointEmbedded>{},
        (Map<String, CheckpointEmbedded> previousValue, element) {
      final CheckpointEmbedded? object =
          CheckpointEmbedded.fromJson(element.value);
      if (object is CheckpointEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CheckpointEmbedded-objects as value to a dart map
  static Map<String, List<CheckpointEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CheckpointEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CheckpointEmbedded>>(
          key, CheckpointEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'CheckpointEmbedded[createdBy=$createdBy]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^createdBy\.').hasMatch(key)))
        r'createdBy': createdBy?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^createdBy\.'))) {
            previousValue.add(element.split(RegExp(r'^createdBy\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
