//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Place {
  /// Returns a new [Place] instance.
  Place({
    this.embedded,
    this.links,
    this.address,
    this.branchCode,
    this.createdAt,
    this.description,
    this.id,
    @required this.name,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Place] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Place.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Place(
      embedded: PlaceEmbedded.fromJson(json[r'_embedded']),
      links: PlaceLinks.fromJson(json[r'_links']),
      address: PlacePostalAddress.fromJson(json[r'address']),
      branchCode: json[r'branchCode'],
      createdAt: createdAt,
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
      preferences: PlacePreferences.fromJson(json[r'preferences']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  PlaceEmbedded embedded;

  PlaceLinks links;

  PlacePostalAddress address;

  String branchCode;

  DateTime createdAt;

  String description;

  String id;

  String name;

  PlacePreferences preferences;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Place &&
        other.embedded == embedded &&
        other.links == links &&
        other.address == address &&
        other.branchCode == branchCode &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.id == id &&
        other.name == name &&
        other.preferences == preferences &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (branchCode == null ? 0 : branchCode.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Place> listFromJson(List<dynamic> json) {
    return <Place>[
      if (json is List)
        for (dynamic value in json) Place.fromJson(value),
    ];
  }

  static Map<String, Place> mapFromJson(Map<String, dynamic> json) {
    return <String, Place>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Place.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Place-objects as value to a dart map
  static Map<String, List<Place>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Place>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Place.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Place[embedded=$embedded, links=$links, address=$address, branchCode=$branchCode, createdAt=$createdAt, description=$description, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (address != null) r'address': address,
      if (branchCode != null) r'branchCode': branchCode,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (id != null) r'id': id,
      r'name': name,
      if (preferences != null) r'preferences': preferences,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
