//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceEmbedded {
  /// Returns a new [InternalServiceEmbedded] instance.
  InternalServiceEmbedded({
    this.manager,
  });

  /// Returns a new [InternalServiceEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceEmbedded(
      manager: Member.fromJson(json[r'manager']),
    );
  }

  Member? manager;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceEmbedded && other.manager == manager;
  }

  @override
  int get hashCode => (manager == null ? 0 : manager.hashCode);

  static List<InternalServiceEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceEmbedded>[];
    }

    return json.fold(<InternalServiceEmbedded>[],
        (List<InternalServiceEmbedded> previousValue, element) {
      final InternalServiceEmbedded? object =
          InternalServiceEmbedded.fromJson(element);
      if (object is InternalServiceEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServiceEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceEmbedded>{};
    }

    return json.entries.fold(<String, InternalServiceEmbedded>{},
        (Map<String, InternalServiceEmbedded> previousValue, element) {
      final InternalServiceEmbedded? object =
          InternalServiceEmbedded.fromJson(element.value);
      if (object is InternalServiceEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServiceEmbedded-objects as value to a dart map
  static Map<String, List<InternalServiceEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServiceEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServiceEmbedded>>(
          key, InternalServiceEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() => 'InternalServiceEmbedded[manager=$manager]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^manager\.').hasMatch(key)))
        r'manager': manager?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^manager\.'))) {
            previousValue.add(element.split(RegExp(r'^manager\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
