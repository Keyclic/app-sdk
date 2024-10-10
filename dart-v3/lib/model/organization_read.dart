//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class OrganizationRead {
  /// Returns a new [OrganizationRead] instance.
  OrganizationRead({
    this.alternateName,
    this.description,
    this.dispatcher,
    this.logo,
    required this.name,
    this.preferences,
    this.id,
    this.address,
  });

  /// Returns a new [OrganizationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationRead(
      alternateName: json[r'alternateName'],
      description: json[r'description'],
      dispatcher: json[r'dispatcher'],
      logo: json[r'logo'],
      name: json[r'name'],
      preferences: PreferencesOrganizationRead.fromJson(json[r'preferences']),
      id: json[r'id'],
      address: PostalAddressRead.fromJson(json[r'address']),
    );
  }

  String? alternateName;

  String? description;

  final String? dispatcher;

  String? logo;

  String name;

  PreferencesOrganizationRead? preferences;

  /// The resource identifier.
  final String? id;

  PostalAddressRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationRead &&
        other.alternateName == alternateName &&
        other.description == description &&
        other.dispatcher == dispatcher &&
        other.logo == logo &&
        other.name == name &&
        other.preferences == preferences &&
        other.id == id &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (alternateName == null ? 0 : alternateName.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dispatcher == null ? 0 : dispatcher.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (address == null ? 0 : address.hashCode);

  static List<OrganizationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <OrganizationRead>[];
    }

    return json.fold(<OrganizationRead>[],
        (List<OrganizationRead> previousValue, element) {
      final OrganizationRead? object = OrganizationRead.fromJson(element);
      if (object is OrganizationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationRead>{};
    }

    return json.entries.fold(<String, OrganizationRead>{},
        (Map<String, OrganizationRead> previousValue, element) {
      final OrganizationRead? object = OrganizationRead.fromJson(element.value);
      if (object is OrganizationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationRead-objects as value to a dart map
  static Map<String, List<OrganizationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationRead>>(
          key, OrganizationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationRead[alternateName=$alternateName, description=$description, dispatcher=$dispatcher, logo=$logo, name=$name, preferences=$preferences, id=$id, address=$address]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'alternateName'))
        r'alternateName': alternateName,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'dispatcher'))
        r'dispatcher': dispatcher,
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
