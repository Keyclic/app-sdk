//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesQuote {
  /// Returns a new [PreferencesQuote] instance.
  PreferencesQuote({
    this.enabled,
  });

  /// Returns a new [PreferencesQuote] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesQuote? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesQuote(
      enabled: json[r'enabled'],
    );
  }

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesQuote && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesQuote> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesQuote>[];
    }

    return json.fold(<PreferencesQuote>[],
        (List<PreferencesQuote> previousValue, element) {
      final PreferencesQuote? object = PreferencesQuote.fromJson(element);
      if (object is PreferencesQuote) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesQuote> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesQuote>{};
    }

    return json.entries.fold(<String, PreferencesQuote>{},
        (Map<String, PreferencesQuote> previousValue, element) {
      final PreferencesQuote? object = PreferencesQuote.fromJson(element.value);
      if (object is PreferencesQuote) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesQuote-objects as value to a dart map
  static Map<String, List<PreferencesQuote>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesQuote>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesQuote>>(
          key, PreferencesQuote.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesQuote[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
