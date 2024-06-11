//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Organization {
  /// Returns a new [Organization] instance.
  Organization({
    this.links,
    this.address,
    this.alternateName,
    this.archived,
    this.createdAt,
    this.description,
    this.enabled,
    this.endDate,
    this.id,
    required this.name,
    this.preferences,
    this.startDate,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Organization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Organization? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Organization(
      links: OrganizationLinks.fromJson(json[r'_links']),
      address: OrganizationPostalAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      archived: json[r'archived'],
      createdAt: mapToDateTime(json[r'createdAt']),
      description: json[r'description'],
      enabled: json[r'enabled'],
      endDate: mapToDateTime(json[r'endDate']),
      id: json[r'id'],
      name: json[r'name'],
      preferences: OrganizationPreferences.fromJson(json[r'preferences']),
      startDate: mapToDateTime(json[r'startDate']),
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  OrganizationLinks? links;

  OrganizationPostalAddress? address;

  String? alternateName;

  bool? archived;

  final DateTime? createdAt;

  String? description;

  bool? enabled;

  DateTime? endDate;

  final String? id;

  String name;

  OrganizationPreferences? preferences;

  DateTime? startDate;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Organization &&
        other.links == links &&
        other.address == address &&
        other.alternateName == alternateName &&
        other.archived == archived &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.enabled == enabled &&
        other.endDate == endDate &&
        other.id == id &&
        other.name == name &&
        other.preferences == preferences &&
        other.startDate == startDate &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (archived == null ? 0 : archived.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (startDate == null ? 0 : startDate.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Organization> listFromJson(Iterable? json) {
    if (json == null) {
      return <Organization>[];
    }

    return json.fold(<Organization>[],
        (List<Organization> previousValue, element) {
      final Organization? object = Organization.fromJson(element);
      if (object is Organization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Organization> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Organization>{};
    }

    return json.entries.fold(<String, Organization>{},
        (Map<String, Organization> previousValue, element) {
      final Organization? object = Organization.fromJson(element.value);
      if (object is Organization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Organization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Organization>>(
          key, Organization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Organization[links=$links, address=$address, alternateName=$alternateName, archived=$archived, createdAt=$createdAt, description=$description, enabled=$enabled, endDate=$endDate, id=$id, name=$name, preferences=$preferences, startDate=$startDate, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
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
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
      if (keys == null || keys.contains(r'endDate'))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      r'name': name,
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
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
