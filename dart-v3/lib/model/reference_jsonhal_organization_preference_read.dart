//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReferenceJsonhalOrganizationPreferenceRead {
  /// Returns a new [ReferenceJsonhalOrganizationPreferenceRead] instance.
  ReferenceJsonhalOrganizationPreferenceRead({
    this.prefix,
  });

  /// Returns a new [ReferenceJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReferenceJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReferenceJsonhalOrganizationPreferenceRead(
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

    return other is ReferenceJsonhalOrganizationPreferenceRead &&
        other.prefix == prefix;
  }

  @override
  int get hashCode => (prefix == null ? 0 : prefix.hashCode);

  static List<ReferenceJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ReferenceJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<ReferenceJsonhalOrganizationPreferenceRead>[],
        (List<ReferenceJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ReferenceJsonhalOrganizationPreferenceRead? object =
          ReferenceJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is ReferenceJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReferenceJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReferenceJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(
        <String, ReferenceJsonhalOrganizationPreferenceRead>{},
        (Map<String, ReferenceJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ReferenceJsonhalOrganizationPreferenceRead? object =
          ReferenceJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is ReferenceJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReferenceJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ReferenceJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReferenceJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReferenceJsonhalOrganizationPreferenceRead>>(
          key, ReferenceJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReferenceJsonhalOrganizationPreferenceRead[prefix=$prefix]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'prefix')) r'prefix': prefix,
    };
  }
}
