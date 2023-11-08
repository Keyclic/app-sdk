//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationPatch {
  /// Returns a new [OrganizationPatch] instance.
  OrganizationPatch({
    this.address,
    this.alternateName,
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
  static OrganizationPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? archivedAt = json[r'archivedAt'] == null
        ? null
        : DateTime.parse(json[r'archivedAt']);
    if (archivedAt != null && archivedAt.isUtc == false) {
      archivedAt = DateTime.parse('${json[r'archivedAt']}Z');
    }

    DateTime? endDate =
        json[r'endDate'] == null ? null : DateTime.parse(json[r'endDate']);
    if (endDate != null && endDate.isUtc == false) {
      endDate = DateTime.parse('${json[r'endDate']}Z');
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return OrganizationPatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      archivedAt: archivedAt,
      description: json[r'description'],
      endDate: endDate,
      logo: json[r'logo'],
      name: json[r'name'],
      preferences: OrganizationPatchPreferences.fromJson(json[r'preferences']),
      startDate: startDate,
    );
  }

  ExternalServicePatchAddress? address;

  String? alternateName;

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
      (archivedAt == null ? 0 : archivedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<OrganizationPatch> listFromJson(List<dynamic>? json) {
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
      'OrganizationPatch[address=$address, alternateName=$alternateName, archivedAt=$archivedAt, description=$description, endDate=$endDate, logo=$logo, name=$name, preferences=$preferences, startDate=$startDate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
      if ((keys == null && alternateName != null) ||
          (keys?.contains(r'alternateName') ?? false))
        r'alternateName': alternateName,
      if ((keys == null && archivedAt != null) ||
          (keys?.contains(r'archivedAt') ?? false))
        r'archivedAt': archivedAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && endDate != null) ||
          (keys?.contains(r'endDate') ?? false))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if ((keys == null && logo != null) || (keys?.contains(r'logo') ?? false))
        r'logo': logo,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && preferences != null) ||
          (keys?.contains(r'preferences') ?? false))
        r'preferences': preferences?.toJson(),
      if ((keys == null && startDate != null) ||
          (keys?.contains(r'startDate') ?? false))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}
