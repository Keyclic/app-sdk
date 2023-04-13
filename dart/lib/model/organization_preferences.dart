part of keyclic_sdk_api.api;

class OrganizationPreferences {
  OrganizationPreferences({
    this.categoryRequired,
    this.electronicSignature,
    this.form,
    this.offline,
    this.public,
    this.reference,
    this.reverseGeocoding,
    this.reviewEnabled,
  });

  factory OrganizationPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferences(
      categoryRequired: json['categoryRequired'],
      electronicSignature:
          PreferencesElectronicSignature.fromJson(json['electronicSignature']),
      form: PreferencesForm.fromJson(json['form']),
      offline: json['offline'],
      public: json['public'],
      reference: PreferencesReference.fromJson(json['reference']),
      reverseGeocoding: json['reverseGeocoding'],
      reviewEnabled: json['reviewEnabled'],
    );
  }

  bool categoryRequired;

  PreferencesElectronicSignature electronicSignature;

  PreferencesForm form;

  bool offline;

  bool public;

  PreferencesReference reference;

  bool reverseGeocoding;

  bool reviewEnabled;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        runtimeType == other.runtimeType &&
        categoryRequired == other.categoryRequired &&
        electronicSignature == other.electronicSignature &&
        form == other.form &&
        offline == other.offline &&
        public == other.public &&
        reference == other.reference &&
        reverseGeocoding == other.reverseGeocoding &&
        reviewEnabled == other.reviewEnabled;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= categoryRequired?.hashCode ?? 0;
    hashCode ^= electronicSignature?.hashCode ?? 0;
    hashCode ^= form?.hashCode ?? 0;
    hashCode ^= offline?.hashCode ?? 0;
    hashCode ^= public?.hashCode ?? 0;
    hashCode ^= reference?.hashCode ?? 0;
    hashCode ^= reverseGeocoding?.hashCode ?? 0;
    hashCode ^= reviewEnabled?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationPreferences> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationPreferences.fromJson(value))
            ?.toList() ??
        <OrganizationPreferences>[];
  }

  static Map<String, OrganizationPreferences> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, OrganizationPreferences>((String key, dynamic value) {
          return MapEntry(key, OrganizationPreferences.fromJson(value));
        }) ??
        <String, OrganizationPreferences>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (categoryRequired != null) 'categoryRequired': categoryRequired,
      if (electronicSignature != null)
        'electronicSignature': electronicSignature.toJson(),
      if (form != null) 'form': form.toJson(),
      if (offline != null) 'offline': offline,
      if (public != null) 'public': public,
      if (reference != null) 'reference': reference.toJson(),
      if (reverseGeocoding != null) 'reverseGeocoding': reverseGeocoding,
      if (reviewEnabled != null) 'reviewEnabled': reviewEnabled,
    };
  }

  @override
  String toString() {
    return 'OrganizationPreferences[categoryRequired=$categoryRequired, electronicSignature=$electronicSignature, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, reviewEnabled=$reviewEnabled, ]';
  }
}
