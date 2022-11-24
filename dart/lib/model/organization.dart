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
    this.createdAt,
    this.description,
    this.enabled,
    this.id,
    required this.name,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Organization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Organization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Organization(
      links: OrganizationLinks.fromJson(json[r'_links']),
      address: OrganizationPostalAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      createdAt: createdAt,
      description: json[r'description'],
      enabled: json[r'enabled'],
      id: json[r'id'],
      name: json[r'name'],
      preferences: OrganizationPreferences.fromJson(json[r'preferences']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  OrganizationLinks? links;

  OrganizationPostalAddress? address;

  String? alternateName;

  final DateTime? createdAt;

  String? description;

  bool? enabled;

  final String? id;

  String name;

  OrganizationPreferences? preferences;

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
        other.createdAt == createdAt &&
        other.description == description &&
        other.enabled == enabled &&
        other.id == id &&
        other.name == name &&
        other.preferences == preferences &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (enabled == null ? 0 : enabled.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Organization> listFromJson(List<dynamic>? json) {
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
      'Organization[links=$links, address=$address, alternateName=$alternateName, createdAt=$createdAt, description=$description, enabled=$enabled, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (address != null) r'address': address,
      if (alternateName != null) r'alternateName': alternateName,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (enabled != null) r'enabled': enabled,
      if (id != null) r'id': id,
      r'name': name,
      if (preferences != null) r'preferences': preferences,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
