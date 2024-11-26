//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ArchivingJsonhalOrganizationPreferenceReadLinks {
  /// Returns a new [ArchivingJsonhalOrganizationPreferenceReadLinks] instance.
  ArchivingJsonhalOrganizationPreferenceReadLinks({
    this.self,
  });

  /// Returns a new [ArchivingJsonhalOrganizationPreferenceReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArchivingJsonhalOrganizationPreferenceReadLinks? fromJson(
      Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ArchivingJsonhalOrganizationPreferenceReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArchivingJsonhalOrganizationPreferenceReadLinks &&
        other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<ArchivingJsonhalOrganizationPreferenceReadLinks> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ArchivingJsonhalOrganizationPreferenceReadLinks>[];
    }

    return json.fold(<ArchivingJsonhalOrganizationPreferenceReadLinks>[],
        (List<ArchivingJsonhalOrganizationPreferenceReadLinks> previousValue,
            element) {
      final ArchivingJsonhalOrganizationPreferenceReadLinks? object =
          ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(element);
      if (object is ArchivingJsonhalOrganizationPreferenceReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArchivingJsonhalOrganizationPreferenceReadLinks>
      mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArchivingJsonhalOrganizationPreferenceReadLinks>{};
    }

    return json.entries
        .fold(<String, ArchivingJsonhalOrganizationPreferenceReadLinks>{},
            (Map<String, ArchivingJsonhalOrganizationPreferenceReadLinks>
                    previousValue,
                element) {
      final ArchivingJsonhalOrganizationPreferenceReadLinks? object =
          ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
              element.value);
      if (object is ArchivingJsonhalOrganizationPreferenceReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArchivingJsonhalOrganizationPreferenceReadLinks-objects as value to a dart map
  static Map<String, List<ArchivingJsonhalOrganizationPreferenceReadLinks>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArchivingJsonhalOrganizationPreferenceReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String,
              List<ArchivingJsonhalOrganizationPreferenceReadLinks>>(key,
          ArchivingJsonhalOrganizationPreferenceReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ArchivingJsonhalOrganizationPreferenceReadLinks[self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
