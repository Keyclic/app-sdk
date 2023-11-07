//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesReference {
  /// Returns a new [PreferencesReference] instance.
  PreferencesReference({
    this.prefix,
  });

  /// Returns a new [PreferencesReference] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesReference? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PreferencesReference(
      prefix: json[r'prefix'],
    );
  }

  String? prefix;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesReference && other.prefix == prefix;
  }

  @override
  int get hashCode => (prefix == null ? 0 : prefix.hashCode);

  static List<PreferencesReference> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PreferencesReference>[];
    }

    return json.fold(<PreferencesReference>[],
        (List<PreferencesReference> previousValue, element) {
      final PreferencesReference? object =
          PreferencesReference.fromJson(element);
      if (object is PreferencesReference) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesReference> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesReference>{};
    }

    return json.entries.fold(<String, PreferencesReference>{},
        (Map<String, PreferencesReference> previousValue, element) {
      final PreferencesReference? object =
          PreferencesReference.fromJson(element.value);
      if (object is PreferencesReference) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesReference-objects as value to a dart map
  static Map<String, List<PreferencesReference>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesReference>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesReference>>(
          key, PreferencesReference.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesReference[prefix=$prefix]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && prefix != null) ||
          (keys?.contains(r'prefix') ?? false))
        r'prefix': prefix,
    };
  }
}
