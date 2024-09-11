//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OrganizationJsonhalRead {
  /// Returns a new [OrganizationJsonhalRead] instance.
  OrganizationJsonhalRead({
    this.links,
    this.alternateName,
    this.description,
    this.logo,
    required this.name,
    this.preferences,
    this.id,
    this.address,
  });

  /// Returns a new [OrganizationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationJsonhalRead(
      links: OrganizationJsonhalReadLinks.fromJson(json[r'_links']),
      alternateName: json[r'alternateName'],
      description: json[r'description'],
      logo: json[r'logo'],
      name: json[r'name'],
      preferences:
          PreferencesJsonhalOrganizationRead.fromJson(json[r'preferences']),
      id: json[r'id'],
      address: PostalAddressJsonhalRead.fromJson(json[r'address']),
    );
  }

  OrganizationJsonhalReadLinks? links;

  String? alternateName;

  String? description;

  String? logo;

  String name;

  PreferencesJsonhalOrganizationRead? preferences;

  /// The resource identifier.
  final String? id;

  PostalAddressJsonhalRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationJsonhalRead &&
        other.links == links &&
        other.alternateName == alternateName &&
        other.description == description &&
        other.logo == logo &&
        other.name == name &&
        other.preferences == preferences &&
        other.id == id &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (alternateName == null ? 0 : alternateName.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (address == null ? 0 : address.hashCode);

  static List<OrganizationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationJsonhalRead>[];
    }

    return json.fold(<OrganizationJsonhalRead>[],
        (List<OrganizationJsonhalRead> previousValue, element) {
      final OrganizationJsonhalRead? object =
          OrganizationJsonhalRead.fromJson(element);
      if (object is OrganizationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationJsonhalRead>{};
    }

    return json.entries.fold(<String, OrganizationJsonhalRead>{},
        (Map<String, OrganizationJsonhalRead> previousValue, element) {
      final OrganizationJsonhalRead? object =
          OrganizationJsonhalRead.fromJson(element.value);
      if (object is OrganizationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationJsonhalRead-objects as value to a dart map
  static Map<String, List<OrganizationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationJsonhalRead>>(
          key, OrganizationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationJsonhalRead[links=$links, alternateName=$alternateName, description=$description, logo=$logo, name=$name, preferences=$preferences, id=$id, address=$address]';

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
      if (keys == null || keys.contains(r'alternateName'))
        r'alternateName': alternateName,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'logo')) r'logo': logo,
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
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
