//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentJsongeoRead {
  /// Returns a new [EquipmentJsongeoRead] instance.
  EquipmentJsongeoRead({
    this.id,
    this.description,
    required this.name,
    this.preferences,
    this.path,
    this.address,
    this.parent,
    this.state,
  });

  /// Returns a new [EquipmentJsongeoRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentJsongeoRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EquipmentJsongeoRead(
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
  final String? id;

  String? description;

  String name;

  PreferencesJsongeoAssetRead? preferences;

  final List<NodeJsongeoRead>? path;

  PostalAddressJsongeoRead? address;

  String? parent;

  WorkflowStateJsongeoRead? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentJsongeoRead &&
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
      (id == null ? 0 : id.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (preferences == null ? 0 : preferences.hashCode) +
      (path == null ? 0 : path.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<EquipmentJsongeoRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <EquipmentJsongeoRead>[];
    }

    return json.fold(<EquipmentJsongeoRead>[],
        (List<EquipmentJsongeoRead> previousValue, element) {
      final EquipmentJsongeoRead? object =
          EquipmentJsongeoRead.fromJson(element);
      if (object is EquipmentJsongeoRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentJsongeoRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentJsongeoRead>{};
    }

    return json.entries.fold(<String, EquipmentJsongeoRead>{},
        (Map<String, EquipmentJsongeoRead> previousValue, element) {
      final EquipmentJsongeoRead? object =
          EquipmentJsongeoRead.fromJson(element.value);
      if (object is EquipmentJsongeoRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentJsongeoRead-objects as value to a dart map
  static Map<String, List<EquipmentJsongeoRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentJsongeoRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentJsongeoRead>>(
          key, EquipmentJsongeoRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentJsongeoRead[id=$id, description=$description, name=$name, preferences=$preferences, path=$path, address=$address, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
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
      if (keys == null || keys.contains(r'path')) r'path': path,
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
