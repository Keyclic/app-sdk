//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PreferencesReview {
  /// Returns a new [PreferencesReview] instance.
  PreferencesReview({
    this.enabled,
  });

  /// Returns a new [PreferencesReview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesReview? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesReview(
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

    return other is PreferencesReview && other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<PreferencesReview> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesReview>[];
    }

    return json.fold(<PreferencesReview>[],
        (List<PreferencesReview> previousValue, element) {
      final PreferencesReview? object = PreferencesReview.fromJson(element);
      if (object is PreferencesReview) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesReview> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesReview>{};
    }

    return json.entries.fold(<String, PreferencesReview>{},
        (Map<String, PreferencesReview> previousValue, element) {
      final PreferencesReview? object =
          PreferencesReview.fromJson(element.value);
      if (object is PreferencesReview) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesReview-objects as value to a dart map
  static Map<String, List<PreferencesReview>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesReview>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesReview>>(
          key, PreferencesReview.listFromJson(value));
    });
  }

  @override
  String toString() => 'PreferencesReview[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
