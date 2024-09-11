//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesOrganizationRead {
  /// Returns a new [PreferencesOrganizationRead] instance.
  PreferencesOrganizationRead({
    this.archiving,
    this.contract,
    this.equipment,
    this.feedbackParentPlace,
    this.form,
    this.offline,
    this.public,
    this.reference,
    this.reverseGeocoding,
    this.review,
    this.sla,
    this.categoryRequired,
    this.reviewEnabled,
  });

  /// Returns a new [PreferencesOrganizationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesOrganizationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesOrganizationRead(
      archiving:
          ArchivingOrganizationPreferenceRead.fromJson(json[r'archiving']),
      contract: ContractOrganizationPreferenceRead.fromJson(json[r'contract']),
      equipment:
          EquipmentOrganizationPreferenceRead.fromJson(json[r'equipment']),
      feedbackParentPlace: json[r'feedbackParentPlace'],
      form: FormOrganizationPreferenceRead.fromJson(json[r'form']),
      offline: json[r'offline'],
      public: json[r'public'],
      reference:
          ReferenceOrganizationPreferenceRead.fromJson(json[r'reference']),
      reverseGeocoding: json[r'reverseGeocoding'],
      review: ReviewOrganizationPreferenceRead.fromJson(json[r'review']),
      sla: SlaOrganizationPreferenceRead.fromJson(json[r'sla']),
      categoryRequired: json[r'categoryRequired'],
      reviewEnabled: json[r'reviewEnabled'],
    );
  }

  ArchivingOrganizationPreferenceRead? archiving;

  ContractOrganizationPreferenceRead? contract;

  EquipmentOrganizationPreferenceRead? equipment;

  bool? feedbackParentPlace;

  FormOrganizationPreferenceRead? form;

  bool? offline;

  bool? public;

  ReferenceOrganizationPreferenceRead? reference;

  bool? reverseGeocoding;

  ReviewOrganizationPreferenceRead? review;

  SlaOrganizationPreferenceRead? sla;

  final bool? categoryRequired;

  final bool? reviewEnabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesOrganizationRead &&
        other.archiving == archiving &&
        other.contract == contract &&
        other.equipment == equipment &&
        other.feedbackParentPlace == feedbackParentPlace &&
        other.form == form &&
        other.offline == offline &&
        other.public == public &&
        other.reference == reference &&
        other.reverseGeocoding == reverseGeocoding &&
        other.review == review &&
        other.sla == sla &&
        other.categoryRequired == categoryRequired &&
        other.reviewEnabled == reviewEnabled;
  }

  @override
  int get hashCode =>
      (archiving == null ? 0 : archiving.hashCode) +
      (contract == null ? 0 : contract.hashCode) +
      (equipment == null ? 0 : equipment.hashCode) +
      (feedbackParentPlace == null ? 0 : feedbackParentPlace.hashCode) +
      (form == null ? 0 : form.hashCode) +
      (offline == null ? 0 : offline.hashCode) +
      (public == null ? 0 : public.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (reverseGeocoding == null ? 0 : reverseGeocoding.hashCode) +
      (review == null ? 0 : review.hashCode) +
      (sla == null ? 0 : sla.hashCode) +
      (categoryRequired == null ? 0 : categoryRequired.hashCode) +
      (reviewEnabled == null ? 0 : reviewEnabled.hashCode);

  static List<PreferencesOrganizationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesOrganizationRead>[];
    }

    return json.fold(<PreferencesOrganizationRead>[],
        (List<PreferencesOrganizationRead> previousValue, element) {
      final PreferencesOrganizationRead? object =
          PreferencesOrganizationRead.fromJson(element);
      if (object is PreferencesOrganizationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesOrganizationRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesOrganizationRead>{};
    }

    return json.entries.fold(<String, PreferencesOrganizationRead>{},
        (Map<String, PreferencesOrganizationRead> previousValue, element) {
      final PreferencesOrganizationRead? object =
          PreferencesOrganizationRead.fromJson(element.value);
      if (object is PreferencesOrganizationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesOrganizationRead-objects as value to a dart map
  static Map<String, List<PreferencesOrganizationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesOrganizationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesOrganizationRead>>(
          key, PreferencesOrganizationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesOrganizationRead[archiving=$archiving, contract=$contract, equipment=$equipment, feedbackParentPlace=$feedbackParentPlace, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, review=$review, sla=$sla, categoryRequired=$categoryRequired, reviewEnabled=$reviewEnabled]';

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
      if (keys == null || keys.any((key) => RegExp(r'^sla\.').hasMatch(key)))
        r'sla': sla?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^sla\.'))) {
            previousValue.add(element.split(RegExp(r'^sla\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'categoryRequired'))
        r'categoryRequired': categoryRequired,
      if (keys == null || keys.contains(r'reviewEnabled'))
        r'reviewEnabled': reviewEnabled,
    };
  }
}
