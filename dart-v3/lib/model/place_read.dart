//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceRead {
  /// Returns a new [PlaceRead] instance.
  PlaceRead({
    this.id,
    this.description,
    required this.name,
    this.parent,
    this.state,
    this.preferences,
    this.address,
  });

  /// Returns a new [PlaceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceRead(
      id: json[r'id'],
      description: json[r'description'],
      name: json[r'name'],
      parent: json[r'parent'],
      state: WorkflowStateRead.fromJson(json[r'state']),
      preferences: PreferencesRead.fromJson(json[r'preferences']),
      address: PostalAddressRead.fromJson(json[r'address']),
    );
  }

  /// The resource identifier.
  final String? id;

  String? description;

  String name;

  String? parent;

  WorkflowStateRead? state;

  PreferencesRead? preferences;

  PostalAddressRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceRead &&
        other.id == id &&
        other.description == description &&
        other.name == name &&
        other.parent == parent &&
        other.state == state &&
        other.preferences == preferences &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (address == null ? 0 : address.hashCode);

  static List<PlaceRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PlaceRead>[];
    }

    return json.fold(<PlaceRead>[], (List<PlaceRead> previousValue, element) {
      final PlaceRead? object = PlaceRead.fromJson(element);
      if (object is PlaceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceRead>{};
    }

    return json.entries.fold(<String, PlaceRead>{},
        (Map<String, PlaceRead> previousValue, element) {
      final PlaceRead? object = PlaceRead.fromJson(element.value);
      if (object is PlaceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceRead-objects as value to a dart map
  static Map<String, List<PlaceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceRead>>(
          key, PlaceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceRead[id=$id, description=$description, name=$name, parent=$parent, state=$state, preferences=$preferences, address=$address]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
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
    };
  }
}
