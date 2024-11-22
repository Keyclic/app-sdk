//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PreferencesJsonhalOrganizationRead {
  /// Returns a new [PreferencesJsonhalOrganizationRead] instance.
  PreferencesJsonhalOrganizationRead({
    required this.archiving,
    required this.contract,
    required this.equipment,
    required this.feedbackParentPlace,
    required this.form,
    required this.offline,
    required this.public,
    required this.reference,
    required this.reverseGeocoding,
    required this.review,
    required this.sla,
  });

  /// Returns a new [PreferencesJsonhalOrganizationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PreferencesJsonhalOrganizationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PreferencesJsonhalOrganizationRead(
      archiving: ArchivingJsonhalOrganizationPreferenceRead.fromJson(
          json[r'archiving'])!,
      contract: ContractJsonhalOrganizationPreferenceRead.fromJson(
          json[r'contract'])!,
      equipment: EquipmentJsonhalOrganizationPreferenceRead.fromJson(
          json[r'equipment'])!,
      feedbackParentPlace: json[r'feedbackParentPlace'],
      form: FormJsonhalOrganizationPreferenceRead.fromJson(json[r'form'])!,
      offline: json[r'offline'],
      public: json[r'public'],
      reference: ReferenceJsonhalOrganizationPreferenceRead.fromJson(
          json[r'reference'])!,
      reverseGeocoding: json[r'reverseGeocoding'],
      review:
          ReviewJsonhalOrganizationPreferenceRead.fromJson(json[r'review'])!,
      sla: SlaJsonhalOrganizationPreferenceRead.fromJson(json[r'sla'])!,
    );
  }

  ArchivingJsonhalOrganizationPreferenceRead archiving;

  ContractJsonhalOrganizationPreferenceRead contract;

  EquipmentJsonhalOrganizationPreferenceRead equipment;

  bool feedbackParentPlace;

  FormJsonhalOrganizationPreferenceRead form;

  bool offline;

  bool public;

  ReferenceJsonhalOrganizationPreferenceRead reference;

  bool reverseGeocoding;

  ReviewJsonhalOrganizationPreferenceRead review;

  SlaJsonhalOrganizationPreferenceRead sla;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PreferencesJsonhalOrganizationRead &&
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
        other.sla == sla;
  }

  @override
  int get hashCode =>
      archiving.hashCode +
      contract.hashCode +
      equipment.hashCode +
      feedbackParentPlace.hashCode +
      form.hashCode +
      offline.hashCode +
      public.hashCode +
      reference.hashCode +
      reverseGeocoding.hashCode +
      review.hashCode +
      sla.hashCode;

  static List<PreferencesJsonhalOrganizationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PreferencesJsonhalOrganizationRead>[];
    }

    return json.fold(<PreferencesJsonhalOrganizationRead>[],
        (List<PreferencesJsonhalOrganizationRead> previousValue, element) {
      final PreferencesJsonhalOrganizationRead? object =
          PreferencesJsonhalOrganizationRead.fromJson(element);
      if (object is PreferencesJsonhalOrganizationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PreferencesJsonhalOrganizationRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PreferencesJsonhalOrganizationRead>{};
    }

    return json.entries.fold(<String, PreferencesJsonhalOrganizationRead>{},
        (Map<String, PreferencesJsonhalOrganizationRead> previousValue,
            element) {
      final PreferencesJsonhalOrganizationRead? object =
          PreferencesJsonhalOrganizationRead.fromJson(element.value);
      if (object is PreferencesJsonhalOrganizationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PreferencesJsonhalOrganizationRead-objects as value to a dart map
  static Map<String, List<PreferencesJsonhalOrganizationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PreferencesJsonhalOrganizationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PreferencesJsonhalOrganizationRead>>(
          key, PreferencesJsonhalOrganizationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PreferencesJsonhalOrganizationRead[archiving=$archiving, contract=$contract, equipment=$equipment, feedbackParentPlace=$feedbackParentPlace, form=$form, offline=$offline, public=$public, reference=$reference, reverseGeocoding=$reverseGeocoding, review=$review, sla=$sla]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'archiving': archiving.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^archiving\.'))) {
          previousValue.add(element.split(RegExp(r'^archiving\.')).last);
        }

        return previousValue;
      })),
      r'contract': contract.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^contract\.'))) {
          previousValue.add(element.split(RegExp(r'^contract\.')).last);
        }

        return previousValue;
      })),
      r'equipment': equipment.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^equipment\.'))) {
          previousValue.add(element.split(RegExp(r'^equipment\.')).last);
        }

        return previousValue;
      })),
      r'feedbackParentPlace': feedbackParentPlace,
      r'form': form.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^form\.'))) {
          previousValue.add(element.split(RegExp(r'^form\.')).last);
        }

        return previousValue;
      })),
      r'offline': offline,
      r'public': public,
      r'reference': reference.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^reference\.'))) {
          previousValue.add(element.split(RegExp(r'^reference\.')).last);
        }

        return previousValue;
      })),
      r'reverseGeocoding': reverseGeocoding,
      r'review': review.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^review\.'))) {
          previousValue.add(element.split(RegExp(r'^review\.')).last);
        }

        return previousValue;
      })),
      r'sla': sla.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^sla\.'))) {
          previousValue.add(element.split(RegExp(r'^sla\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
