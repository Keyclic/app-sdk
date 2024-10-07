//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FormJsonhalOrganizationPreferenceReadLinks {
  /// Returns a new [FormJsonhalOrganizationPreferenceReadLinks] instance.
  FormJsonhalOrganizationPreferenceReadLinks({
    this.self,
  });

  /// Returns a new [FormJsonhalOrganizationPreferenceReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FormJsonhalOrganizationPreferenceReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FormJsonhalOrganizationPreferenceReadLinks(
      self: AssetJsonhalReadLinksType.fromJson(json[r'self']),
    );
  }

  AssetJsonhalReadLinksType? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FormJsonhalOrganizationPreferenceReadLinks &&
        other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<FormJsonhalOrganizationPreferenceReadLinks> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <FormJsonhalOrganizationPreferenceReadLinks>[];
    }

    return json.fold(<FormJsonhalOrganizationPreferenceReadLinks>[],
        (List<FormJsonhalOrganizationPreferenceReadLinks> previousValue,
            element) {
      final FormJsonhalOrganizationPreferenceReadLinks? object =
          FormJsonhalOrganizationPreferenceReadLinks.fromJson(element);
      if (object is FormJsonhalOrganizationPreferenceReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FormJsonhalOrganizationPreferenceReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FormJsonhalOrganizationPreferenceReadLinks>{};
    }

    return json.entries.fold(
        <String, FormJsonhalOrganizationPreferenceReadLinks>{},
        (Map<String, FormJsonhalOrganizationPreferenceReadLinks> previousValue,
            element) {
      final FormJsonhalOrganizationPreferenceReadLinks? object =
          FormJsonhalOrganizationPreferenceReadLinks.fromJson(element.value);
      if (object is FormJsonhalOrganizationPreferenceReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FormJsonhalOrganizationPreferenceReadLinks-objects as value to a dart map
  static Map<String, List<FormJsonhalOrganizationPreferenceReadLinks>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FormJsonhalOrganizationPreferenceReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FormJsonhalOrganizationPreferenceReadLinks>>(
          key, FormJsonhalOrganizationPreferenceReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'FormJsonhalOrganizationPreferenceReadLinks[self=$self]';

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
