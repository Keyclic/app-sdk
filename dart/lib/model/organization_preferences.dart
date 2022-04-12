//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OrganizationPreferences {
  /// Returns a new [OrganizationPreferences] instance.
  OrganizationPreferences({
    this.categoryRequired,
    this.form,
    this.offline,
    this.public,
    this.reference,
    this.reviewEnabled,
  });

  /// Returns a new [OrganizationPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OrganizationPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferences(
      categoryRequired: json[r'categoryRequired'],
      form: PreferencesForm.fromJson(json[r'form']),
      offline: json[r'offline'],
      public: json[r'public'],
      reference: PreferencesReference.fromJson(json[r'reference']),
      reviewEnabled: json[r'reviewEnabled'],
    );
  }

  bool categoryRequired;

  PreferencesForm form;

  bool offline;

  bool public;

  PreferencesReference reference;

  bool reviewEnabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        other.categoryRequired == categoryRequired &&
        other.form == form &&
        other.offline == offline &&
        other.public == public &&
        other.reference == reference &&
        other.reviewEnabled == reviewEnabled;
  }

  @override
  int get hashCode =>
      (categoryRequired == null ? 0 : categoryRequired.hashCode) +
      (form == null ? 0 : form.hashCode) +
      (offline == null ? 0 : offline.hashCode) +
      (public == null ? 0 : public.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (reviewEnabled == null ? 0 : reviewEnabled.hashCode);

  static List<OrganizationPreferences> listFromJson(List<dynamic> json) {
    return <OrganizationPreferences>[
      if (json is List)
        for (dynamic value in json) OrganizationPreferences.fromJson(value),
    ];
  }

  static Map<String, OrganizationPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OrganizationPreferences>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPreferences.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationPreferences-objects as value to a dart map
  static Map<String, List<OrganizationPreferences>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationPreferences>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationPreferences.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationPreferences[categoryRequired=$categoryRequired, form=$form, offline=$offline, public=$public, reference=$reference, reviewEnabled=$reviewEnabled]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (categoryRequired != null) r'categoryRequired': categoryRequired,
      if (form != null) r'form': form,
      if (offline != null) r'offline': offline,
      if (public != null) r'public': public,
      if (reference != null) r'reference': reference,
      if (reviewEnabled != null) r'reviewEnabled': reviewEnabled,
    };
  }
}
