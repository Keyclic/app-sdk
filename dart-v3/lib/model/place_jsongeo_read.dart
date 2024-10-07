//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class PlaceJsongeoRead {
  /// Returns a new [PlaceJsongeoRead] instance.
  PlaceJsongeoRead({
    required this.id,
    this.description,
    required this.name,
    this.preferences,
    this.path = const [],
    this.address,
    this.parent,
    this.state,
  });

  /// Returns a new [PlaceJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PlaceJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return PlaceJsongeoRead(
      id: json[r'id'],
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesJsongeoAssetRead.fromJson(json[r'preferences']),
      path: NodeJsongeoRead.listFromJson(json[r'path']),
      address: PostalAddressJsongeoRead.fromJson(json[r'address']),
      parent: json[r'parent'],
      state: WorkflowStateJsongeoRead.fromJson(json[r'state']),
    );
  }

  /// The resource identifier.
  final String id;

  String? description;

  String name;

  PreferencesJsongeoAssetRead? preferences;

  final List<NodeJsongeoRead> path;

  PostalAddressJsongeoRead? address;

  String? parent;

  WorkflowStateJsongeoRead? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceJsongeoRead &&
        other.id == id &&
        other.description == description &&
        other.name == name &&
        other.preferences == preferences &&
        DeepCollectionEquality.unordered().equals(path, other.path) &&
        other.address == address &&
        other.parent == parent &&
        other.state == state;
  }

  @override
  int get hashCode =>
      id.hashCode +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      path.hashCode +
      (address == null ? 0 : address.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<PlaceJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <PlaceJsongeoRead>[];
    }

    return json.fold(<PlaceJsongeoRead>[],
        (List<PlaceJsongeoRead> previousValue, element) {
      final PlaceJsongeoRead? object = PlaceJsongeoRead.fromJson(element);
      if (object is PlaceJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PlaceJsongeoRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PlaceJsongeoRead>{};
    }

    return json.entries.fold(<String, PlaceJsongeoRead>{},
        (Map<String, PlaceJsongeoRead> previousValue, element) {
      final PlaceJsongeoRead? object = PlaceJsongeoRead.fromJson(element.value);
      if (object is PlaceJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PlaceJsongeoRead-objects as value to a dart map
  static Map<String, List<PlaceJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PlaceJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PlaceJsongeoRead>>(
          key, PlaceJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PlaceJsongeoRead[id=$id, description=$description, name=$name, preferences=$preferences, path=$path, address=$address, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'id': id,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
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
      r'path': path,
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
