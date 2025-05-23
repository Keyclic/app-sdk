//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPatch {
  /// Returns a new [OrganizationPatch] instance.
  OrganizationPatch({
    this.address,
    this.alternateName,
    this.archived,
    this.archivedAt,
    this.description,
    this.endDate,
    this.logo,
    this.name,
    this.preferences,
    this.startDate,
  });

  /// Returns a new [OrganizationPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationPatch? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationPatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      archived: json[r'archived'],
      archivedAt: mapToDateTime(json[r'archivedAt']),
      description: json[r'description'],
      endDate: mapToDateTime(json[r'endDate']),
      logo: json[r'logo'],
      name: json[r'name'],
      preferences: OrganizationPatchPreferences.fromJson(json[r'preferences']),
      startDate: mapToDateTime(json[r'startDate']),
    );
  }

  ExternalServicePatchAddress? address;

  String? alternateName;

  bool? archived;

  DateTime? archivedAt;

  String? description;

  DateTime? endDate;

  String? logo;

  String? name;

  OrganizationPatchPreferences? preferences;

  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPatch &&
        other.address == address &&
        other.alternateName == alternateName &&
        other.archived == archived &&
        other.archivedAt == archivedAt &&
        other.description == description &&
        other.endDate == endDate &&
        other.logo == logo &&
        other.name == name &&
        other.preferences == preferences &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (archived == null ? 0 : archived.hashCode) +
      (archivedAt == null ? 0 : archivedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<OrganizationPatch> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationPatch>[];
    }

    return json.fold(<OrganizationPatch>[],
        (List<OrganizationPatch> previousValue, element) {
      final OrganizationPatch? object = OrganizationPatch.fromJson(element);
      if (object is OrganizationPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationPatch> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationPatch>{};
    }

    return json.entries.fold(<String, OrganizationPatch>{},
        (Map<String, OrganizationPatch> previousValue, element) {
      final OrganizationPatch? object =
          OrganizationPatch.fromJson(element.value);
      if (object is OrganizationPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationPatch-objects as value to a dart map
  static Map<String, List<OrganizationPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationPatch>>(
          key, OrganizationPatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationPatch[address=$address, alternateName=$alternateName, archived=$archived, archivedAt=$archivedAt, description=$description, endDate=$endDate, logo=$logo, name=$name, preferences=$preferences, startDate=$startDate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'alternateName'))
        r'alternateName': alternateName,
      if (keys == null || keys.contains(r'archived')) r'archived': archived,
      if (keys == null || keys.contains(r'archivedAt'))
        r'archivedAt': archivedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'endDate'))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'logo')) r'logo': logo,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'startDate'))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}
