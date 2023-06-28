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
    this.state,
  });

  /// Returns a new [AssetRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssetRead? fromJson(Map<String, dynamic>? json) {
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

    return AssetRead(
      type: json[r'type'],
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      state: json[r'state'],
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

  String? state;

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
        other.state == state;
  }

  @override
  int get hashCode =>
      (type == null ? 0 : type.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (state == null ? 0 : state.hashCode);

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
      'AssetRead[type=$type, description=$description, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, state=$state]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (type != null) r'type': type,
      if (description != null) r'description': description,
      r'name': name,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (state != null) r'state': state,
    };
  }
}
