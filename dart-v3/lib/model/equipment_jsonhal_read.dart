//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentJsonhalRead {
  /// Returns a new [EquipmentJsonhalRead] instance.
  EquipmentJsonhalRead({
    this.links,
    this.brand,
    this.lifetime,
    this.model,
    this.serialNumber,
    this.warranty,
    this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
  });

  /// Returns a new [EquipmentJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return EquipmentJsonhalRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      brand: json[r'brand'],
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      serialNumber: json[r'serialNumber'],
      warranty: json[r'warranty'] is Map ? WarrantyJsonhalRead.fromJson(json[r'warranty']) : null,
      type: json[r'type'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  AssetJsonhalReadLinks? links;

  String? brand;

  String? lifetime;

  String? model;

  String? serialNumber;

  WarrantyJsonhalRead? warranty;

  String? type;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentJsonhalRead &&
        other.links == links &&
        other.brand == brand &&
        other.lifetime == lifetime &&
        other.model == model &&
        other.serialNumber == serialNumber &&
        other.warranty == warranty &&
        other.type == type &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (brand == null ? 0 : brand.hashCode) +
      (lifetime == null ? 0 : lifetime.hashCode) +
      (model == null ? 0 : model.hashCode) +
      (serialNumber == null ? 0 : serialNumber.hashCode) +
      (warranty == null ? 0 : warranty.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode;

  static List<EquipmentJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <EquipmentJsonhalRead>[];
    }

    return json.fold(<EquipmentJsonhalRead>[],
        (List<EquipmentJsonhalRead> previousValue, element) {
      final EquipmentJsonhalRead? object =
          EquipmentJsonhalRead.fromJson(element);
      if (object is EquipmentJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentJsonhalRead>{};
    }

    return json.entries.fold(<String, EquipmentJsonhalRead>{},
        (Map<String, EquipmentJsonhalRead> previousValue, element) {
      final EquipmentJsonhalRead? object =
          EquipmentJsonhalRead.fromJson(element.value);
      if (object is EquipmentJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentJsonhalRead-objects as value to a dart map
  static Map<String, List<EquipmentJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentJsonhalRead>>(
          key, EquipmentJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentJsonhalRead[links=$links, brand=$brand, lifetime=$lifetime, model=$model, serialNumber=$serialNumber, warranty=$warranty, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (brand != null) r'brand': brand,
      if (lifetime != null) r'lifetime': lifetime,
      if (model != null) r'model': model,
      if (serialNumber != null) r'serialNumber': serialNumber,
      if (warranty != null) r'warranty': warranty,
      if (type != null) r'type': type,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      r'name': name,
    };
  }
}
