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

  static List<PreferencesReference> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PreferencesReference>[];
    }
    return json
        .map((value) {
          return PreferencesReference.fromJson(value);
        })
        .whereType<PreferencesReference>()
        .toList();
  }

  static Map<String, PreferencesReference> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesReference>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, PreferencesReference?>(
            key, PreferencesReference.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, PreferencesReference>;
  }

  // maps a json object with a list of PreferencesReference-objects as value to a dart map
  static Map<String, List<PreferencesReference>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<PreferencesReference>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: PreferencesReference.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PreferencesReference[prefix=$prefix]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (prefix != null) r'prefix': prefix,
    };
  }
}
