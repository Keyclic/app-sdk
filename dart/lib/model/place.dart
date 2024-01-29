//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
    required this.name,
    this.preferences,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Place] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Place? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
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

  PlaceEmbedded? embedded;

  PlaceLinks? links;

  PlacePostalAddress? address;

  String? branchCode;

  final DateTime? createdAt;

  String? description;

  final String? id;

  String name;

  PlacePreferences? preferences;

  String? type;

  final DateTime? updatedAt;

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
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Place> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Place>[];
    }

    return json.fold(<Place>[], (List<Place> previousValue, element) {
      final Place? object = Place.fromJson(element);
      if (object is Place) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Place> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Place>{};
    }

    return json.entries.fold(<String, Place>{},
        (Map<String, Place> previousValue, element) {
      final Place? object = Place.fromJson(element.value);
      if (object is Place) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Place-objects as value to a dart map
  static Map<String, List<Place>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Place>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Place>>(key, Place.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Place[embedded=$embedded, links=$links, address=$address, branchCode=$branchCode, createdAt=$createdAt, description=$description, id=$id, name=$name, preferences=$preferences, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
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
      if (keys == null || keys.contains(r'branchCode'))
        r'branchCode': branchCode,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
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
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
