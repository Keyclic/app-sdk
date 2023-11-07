//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPreferences {
  /// Returns a new [OrganizationPreferences] instance.
  OrganizationPreferences({
    this.archiving,
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
      archiving: json[r'archiving'] is! Map
          ? null
          : PreferencesArchiving.fromJson(json[r'archiving']),
      categoryRequired: json[r'categoryRequired'],
      contract: json[r'contract'] is! Map
          ? null
          : PreferencesContract.fromJson(json[r'contract']),
      electronicSignature: json[r'electronicSignature'] is! Map
          ? null
          : PreferencesElectronicSignature.fromJson(
              json[r'electronicSignature']),
      equipment: json[r'equipment'] is! Map
          ? null
          : PreferencesEquipment.fromJson(json[r'equipment']),
      feedbackParentPlace: json[r'feedbackParentPlace'],
      form: json[r'form'] is! Map
          ? null
          : PreferencesForm.fromJson(json[r'form']),
      offline: json[r'offline'],
      public: json[r'public'],
      reference: json[r'reference'] is! Map
          ? null
          : PreferencesReference.fromJson(json[r'reference']),
      reverseGeocoding: json[r'reverseGeocoding'],
      reviewEnabled: json[r'reviewEnabled'],
    );
  }

  PreferencesArchiving? archiving;

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
        other.archiving == archiving &&
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
      (archiving == null ? 0 : archiving.hashCode) +
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
      'OrganizationPreferences[archiving=$archiving, categoryRequired=$categoryRequired, contract=$contract, electronicSignature=$electronicSignature, equipment=$equipment, feedbackParentPlace=$feedbackParentPlace, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, reviewEnabled=$reviewEnabled]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && archiving != null) ||
          (keys?.contains(r'archiving') ?? false))
        r'archiving': archiving?.toJson(),
      if ((keys == null && categoryRequired != null) ||
          (keys?.contains(r'categoryRequired') ?? false))
        r'categoryRequired': categoryRequired,
      if ((keys == null && contract != null) ||
          (keys?.contains(r'contract') ?? false))
        r'contract': contract?.toJson(),
      if ((keys == null && electronicSignature != null) ||
          (keys?.contains(r'electronicSignature') ?? false))
        r'electronicSignature': electronicSignature?.toJson(),
      if ((keys == null && equipment != null) ||
          (keys?.contains(r'equipment') ?? false))
        r'equipment': equipment?.toJson(),
      if ((keys == null && feedbackParentPlace != null) ||
          (keys?.contains(r'feedbackParentPlace') ?? false))
        r'feedbackParentPlace': feedbackParentPlace,
      if ((keys == null && form != null) || (keys?.contains(r'form') ?? false))
        r'form': form?.toJson(),
      if ((keys == null && offline != null) ||
          (keys?.contains(r'offline') ?? false))
        r'offline': offline,
      if ((keys == null && public != null) ||
          (keys?.contains(r'public') ?? false))
        r'public': public,
      if ((keys == null && reference != null) ||
          (keys?.contains(r'reference') ?? false))
        r'reference': reference?.toJson(),
      if ((keys == null && reverseGeocoding != null) ||
          (keys?.contains(r'reverseGeocoding') ?? false))
        r'reverseGeocoding': reverseGeocoding,
      if ((keys == null && reviewEnabled != null) ||
          (keys?.contains(r'reviewEnabled') ?? false))
        r'reviewEnabled': reviewEnabled,
    };
  }
}
