//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPreferences {
  /// Returns a new [OrganizationPreferences] instance.
  OrganizationPreferences({
    this.categoryRequired,
    this.contract,
    this.electronicSignature,
    this.equipment,
    this.feedbackParentPlace,
    this.form,
    this.offline,
    this.public,
    this.reference,
    this.reverseGeocoding,
    this.reviewEnabled,
  });

  /// Returns a new [OrganizationPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferences(
      categoryRequired: json[r'categoryRequired'],
      contract: PreferencesContract.fromJson(json[r'contract']),
      electronicSignature:
          PreferencesElectronicSignature.fromJson(json[r'electronicSignature']),
      equipment: PreferencesEquipment.fromJson(json[r'equipment']),
      feedbackParentPlace: json[r'feedbackParentPlace'],
      form: PreferencesForm.fromJson(json[r'form']),
      offline: json[r'offline'],
      public: json[r'public'],
      reference: PreferencesReference.fromJson(json[r'reference']),
      reverseGeocoding: json[r'reverseGeocoding'],
      reviewEnabled: json[r'reviewEnabled'],
    );
  }

  bool? categoryRequired;

  PreferencesContract? contract;

  PreferencesElectronicSignature? electronicSignature;

  PreferencesEquipment? equipment;

  bool? feedbackParentPlace;

  PreferencesForm? form;

  bool? offline;

  bool? public;

  PreferencesReference? reference;

  bool? reverseGeocoding;

  bool? reviewEnabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPreferences &&
        other.categoryRequired == categoryRequired &&
        other.contract == contract &&
        other.electronicSignature == electronicSignature &&
        other.equipment == equipment &&
        other.feedbackParentPlace == feedbackParentPlace &&
        other.form == form &&
        other.offline == offline &&
        other.public == public &&
        other.reference == reference &&
        other.reverseGeocoding == reverseGeocoding &&
        other.reviewEnabled == reviewEnabled;
  }

  @override
  int get hashCode =>
      (categoryRequired == null ? 0 : categoryRequired.hashCode) +
      (contract == null ? 0 : contract.hashCode) +
      (electronicSignature == null ? 0 : electronicSignature.hashCode) +
      (equipment == null ? 0 : equipment.hashCode) +
      (feedbackParentPlace == null ? 0 : feedbackParentPlace.hashCode) +
      (form == null ? 0 : form.hashCode) +
      (offline == null ? 0 : offline.hashCode) +
      (public == null ? 0 : public.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (reverseGeocoding == null ? 0 : reverseGeocoding.hashCode) +
      (reviewEnabled == null ? 0 : reviewEnabled.hashCode);

  static List<OrganizationPreferences> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationPreferences>[];
    }

    return json.fold(<OrganizationPreferences>[],
        (List<OrganizationPreferences> previousValue, element) {
      final OrganizationPreferences? object =
          OrganizationPreferences.fromJson(element);
      if (object is OrganizationPreferences) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPreferences> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPreferences>{};
    }

    return json.entries.fold(<String, OrganizationPreferences>{},
        (Map<String, OrganizationPreferences> previousValue, element) {
      final OrganizationPreferences? object =
          OrganizationPreferences.fromJson(element.value);
      if (object is OrganizationPreferences) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPreferences-objects as value to a dart map
  static Map<String, List<OrganizationPreferences>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPreferences>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPreferences>>(
          key, OrganizationPreferences.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationPreferences[categoryRequired=$categoryRequired, contract=$contract, electronicSignature=$electronicSignature, equipment=$equipment, feedbackParentPlace=$feedbackParentPlace, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, reviewEnabled=$reviewEnabled]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (categoryRequired != null) r'categoryRequired': categoryRequired,
      if (contract != null) r'contract': contract,
      if (electronicSignature != null)
        r'electronicSignature': electronicSignature,
      if (equipment != null) r'equipment': equipment,
      if (feedbackParentPlace != null)
        r'feedbackParentPlace': feedbackParentPlace,
      if (form != null) r'form': form,
      if (offline != null) r'offline': offline,
      if (public != null) r'public': public,
      if (reference != null) r'reference': reference,
      if (reverseGeocoding != null) r'reverseGeocoding': reverseGeocoding,
      if (reviewEnabled != null) r'reviewEnabled': reviewEnabled,
    };
  }
}
