//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssetRead {
  /// Returns a new [AssetRead] instance.
  AssetRead({
    this.type,
    this.description,
    required this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.parent,
    this.state,
    this.address,
  });

  /// Returns a new [AssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetRead? fromJson(Map<String, dynamic>? json) {
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

    return AssetRead(
      type: json[r'type'],
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      parent: json[r'parent'],
      state: json[r'state'],
      address: PostalAddressRead.fromJson(json[r'address']),
    );
  }

  String? type;

  String? description;

  String name;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? parent;

  String? state;

  PostalAddressRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssetRead &&
        other.type == type &&
        other.description == description &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.parent == parent &&
        other.state == state &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (address == null ? 0 : address.hashCode);

  static List<AssetRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssetRead>[];
    }

    return json.fold(<AssetRead>[], (List<AssetRead> previousValue, element) {
      final AssetRead? object = AssetRead.fromJson(element);
      if (object is AssetRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssetRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssetRead>{};
    }

    return json.entries.fold(<String, AssetRead>{},
        (Map<String, AssetRead> previousValue, element) {
      final AssetRead? object = AssetRead.fromJson(element.value);
      if (object is AssetRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssetRead-objects as value to a dart map
  static Map<String, List<AssetRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssetRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssetRead>>(
          key, AssetRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssetRead[type=$type, description=$description, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, parent=$parent, state=$state, address=$address]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      r'name': name,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if ((keys == null && parent != null) ||
          (keys?.contains(r'parent') ?? false))
        r'parent': parent,
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state,
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
    };
  }
}
