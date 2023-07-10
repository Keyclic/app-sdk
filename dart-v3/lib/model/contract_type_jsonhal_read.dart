//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractTypeJsonhalRead {
  /// Returns a new [ContractTypeJsonhalRead] instance.
  ContractTypeJsonhalRead({
    this.links,
    this.description,
    this.name,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [ContractTypeJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractTypeJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return ContractTypeJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetTypeJsonhalReadLinks? links;

  /// Detailed description of the contract type.
  String? description;

  /// Name of the contract type by the organization.
  String? name;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractTypeJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.name == name &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<ContractTypeJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContractTypeJsonhalRead>[];
    }

    return json.fold(<ContractTypeJsonhalRead>[],
        (List<ContractTypeJsonhalRead> previousValue, element) {
      final ContractTypeJsonhalRead? object =
          ContractTypeJsonhalRead.fromJson(element);
      if (object is ContractTypeJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractTypeJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractTypeJsonhalRead>{};
    }

    return json.entries.fold(<String, ContractTypeJsonhalRead>{},
        (Map<String, ContractTypeJsonhalRead> previousValue, element) {
      final ContractTypeJsonhalRead? object =
          ContractTypeJsonhalRead.fromJson(element.value);
      if (object is ContractTypeJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractTypeJsonhalRead-objects as value to a dart map
  static Map<String, List<ContractTypeJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractTypeJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractTypeJsonhalRead>>(
          key, ContractTypeJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractTypeJsonhalRead[links=$links, description=$description, name=$name, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (description != null) r'description': description,
      if (name != null) r'name': name,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}