//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class QuoteJsonhalOrganizationPreferenceRead {
  /// Returns a new [QuoteJsonhalOrganizationPreferenceRead] instance.
  QuoteJsonhalOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [QuoteJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static QuoteJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return QuoteJsonhalOrganizationPreferenceRead(
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

    return other is QuoteJsonhalOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<QuoteJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <QuoteJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<QuoteJsonhalOrganizationPreferenceRead>[],
        (List<QuoteJsonhalOrganizationPreferenceRead> previousValue, element) {
      final QuoteJsonhalOrganizationPreferenceRead? object =
          QuoteJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is QuoteJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, QuoteJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, QuoteJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, QuoteJsonhalOrganizationPreferenceRead>{},
        (Map<String, QuoteJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final QuoteJsonhalOrganizationPreferenceRead? object =
          QuoteJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is QuoteJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of QuoteJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<QuoteJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<QuoteJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<QuoteJsonhalOrganizationPreferenceRead>>(
          key, QuoteJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'QuoteJsonhalOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
