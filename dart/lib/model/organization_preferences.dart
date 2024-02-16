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
    this.review,
    this.reviewEnabled,
    this.sla,
  });

  /// Returns a new [OrganizationPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPreferences? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationPreferences(
      archiving: PreferencesArchiving.fromJson(json[r'archiving']),
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
      review: PreferencesReview.fromJson(json[r'review']),
      reviewEnabled: json[r'reviewEnabled'],
      sla: PreferencesSla.fromJson(json[r'sla']),
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

  PreferencesReview? review;

  bool? reviewEnabled;

  PreferencesSla? sla;

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
        other.review == review &&
        other.reviewEnabled == reviewEnabled &&
        other.sla == sla;
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
      (review == null ? 0 : review.hashCode) +
      (reviewEnabled == null ? 0 : reviewEnabled.hashCode) +
      (sla == null ? 0 : sla.hashCode);

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
      'OrganizationPreferences[archiving=$archiving, categoryRequired=$categoryRequired, contract=$contract, electronicSignature=$electronicSignature, equipment=$equipment, feedbackParentPlace=$feedbackParentPlace, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, review=$review, reviewEnabled=$reviewEnabled, sla=$sla]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^archiving\.').hasMatch(key)))
        r'archiving': archiving?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^archiving\.'))) {
            previousValue.add(element.split(RegExp(r'^archiving\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'categoryRequired'))
        r'categoryRequired': categoryRequired,
      if (keys == null ||
          keys.any((key) => RegExp(r'^contract\.').hasMatch(key)))
        r'contract': contract?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contract\.'))) {
            previousValue.add(element.split(RegExp(r'^contract\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^electronicSignature\.').hasMatch(key)))
        r'electronicSignature': electronicSignature?.toJson(keys
            ?.fold<List<String>>(<String>[],
                (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^electronicSignature\.'))) {
            previousValue
                .add(element.split(RegExp(r'^electronicSignature\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^equipment\.').hasMatch(key)))
        r'equipment': equipment?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^equipment\.'))) {
            previousValue.add(element.split(RegExp(r'^equipment\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'feedbackParentPlace'))
        r'feedbackParentPlace': feedbackParentPlace,
      if (keys == null || keys.any((key) => RegExp(r'^form\.').hasMatch(key)))
        r'form': form?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^form\.'))) {
            previousValue.add(element.split(RegExp(r'^form\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'offline')) r'offline': offline,
      if (keys == null || keys.contains(r'public')) r'public': public,
      if (keys == null ||
          keys.any((key) => RegExp(r'^reference\.').hasMatch(key)))
        r'reference': reference?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reference\.'))) {
            previousValue.add(element.split(RegExp(r'^reference\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'reverseGeocoding'))
        r'reverseGeocoding': reverseGeocoding,
      if (keys == null || keys.any((key) => RegExp(r'^review\.').hasMatch(key)))
        r'review': review?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^review\.'))) {
            previousValue.add(element.split(RegExp(r'^review\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'reviewEnabled'))
        r'reviewEnabled': reviewEnabled,
      if (keys == null || keys.any((key) => RegExp(r'^sla\.').hasMatch(key)))
        r'sla': sla?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^sla\.'))) {
            previousValue.add(element.split(RegExp(r'^sla\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
