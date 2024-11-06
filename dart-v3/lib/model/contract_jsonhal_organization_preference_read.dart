//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalOrganizationPreferenceRead {
  /// Returns a new [ContractJsonhalOrganizationPreferenceRead] instance.
  ContractJsonhalOrganizationPreferenceRead({
    this.links,
    this.enabled,
  });

  /// Returns a new [ContractJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContractJsonhalOrganizationPreferenceRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      enabled: json[r'enabled'],
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractJsonhalOrganizationPreferenceRead &&
        other.links == links &&
        other.enabled == enabled;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (enabled == null ? 0 : enabled.hashCode);

  static List<ContractJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ContractJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<ContractJsonhalOrganizationPreferenceRead>[],
        (List<ContractJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ContractJsonhalOrganizationPreferenceRead? object =
          ContractJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is ContractJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(
        <String, ContractJsonhalOrganizationPreferenceRead>{},
        (Map<String, ContractJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ContractJsonhalOrganizationPreferenceRead? object =
          ContractJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is ContractJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ContractJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalOrganizationPreferenceRead>>(
          key, ContractJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractJsonhalOrganizationPreferenceRead[links=$links, enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}