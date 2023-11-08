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
  static Organization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
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

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Organization(
      links: OrganizationLinks.fromJson(json[r'_links']),
      address: OrganizationPostalAddress.fromJson(json[r'address']),
      alternateName: json[r'alternateName'],
      archived: json[r'archived'],
      createdAt: createdAt,
      description: json[r'description'],
      enabled: json[r'enabled'],
      endDate: endDate,
      id: json[r'id'],
      name: json[r'name'],
      preferences: OrganizationPreferences.fromJson(json[r'preferences']),
      startDate: startDate,
      type: json[r'type'],
      updatedAt: updatedAt,
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
      'Organization[links=$links, address=$address, alternateName=$alternateName, archived=$archived, createdAt=$createdAt, description=$description, enabled=$enabled, endDate=$endDate, id=$id, name=$name, preferences=$preferences, startDate=$startDate, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
      if ((keys == null && alternateName != null) ||
          (keys?.contains(r'alternateName') ?? false))
        r'alternateName': alternateName,
      if ((keys == null && archived != null) ||
          (keys?.contains(r'archived') ?? false))
        r'archived': archived,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && enabled != null) ||
          (keys?.contains(r'enabled') ?? false))
        r'enabled': enabled,
      if ((keys == null && endDate != null) ||
          (keys?.contains(r'endDate') ?? false))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'name': name,
      if ((keys == null && preferences != null) ||
          (keys?.contains(r'preferences') ?? false))
        r'preferences': preferences?.toJson(),
      if ((keys == null && startDate != null) ||
          (keys?.contains(r'startDate') ?? false))
        r'startDate': startDate?.toUtc().toIso8601String(),
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
