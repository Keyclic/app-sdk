//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReferenceOrganizationPreferenceRead {
  /// Returns a new [ReferenceOrganizationPreferenceRead] instance.
  ReferenceOrganizationPreferenceRead({
    this.prefix,
  });

  /// Returns a new [ReferenceOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReferenceOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReferenceOrganizationPreferenceRead(
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

    return other is ReferenceOrganizationPreferenceRead &&
        other.prefix == prefix;
  }

  @override
  int get hashCode => (prefix == null ? 0 : prefix.hashCode);

  static List<ReferenceOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ReferenceOrganizationPreferenceRead>[];
    }

    return json.fold(<ReferenceOrganizationPreferenceRead>[],
        (List<ReferenceOrganizationPreferenceRead> previousValue, element) {
      final ReferenceOrganizationPreferenceRead? object =
          ReferenceOrganizationPreferenceRead.fromJson(element);
      if (object is ReferenceOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReferenceOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReferenceOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, ReferenceOrganizationPreferenceRead>{},
        (Map<String, ReferenceOrganizationPreferenceRead> previousValue,
            element) {
      final ReferenceOrganizationPreferenceRead? object =
          ReferenceOrganizationPreferenceRead.fromJson(element.value);
      if (object is ReferenceOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReferenceOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ReferenceOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReferenceOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReferenceOrganizationPreferenceRead>>(
          key, ReferenceOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReferenceOrganizationPreferenceRead[prefix=$prefix]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'prefix')) r'prefix': prefix,
    };
  }
}
