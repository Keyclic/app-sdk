//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentRead {
  /// Returns a new [EquipmentRead] instance.
  EquipmentRead({
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

  /// Returns a new [EquipmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentRead? fromJson(Map<String, dynamic>? json) {
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

    return EquipmentRead(
      brand: json[r'brand'],
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      serialNumber: json[r'serialNumber'],
      warranty: WarrantyRead.fromJson(json[r'warranty']),
      type: json[r'type'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  String? brand;

  String? lifetime;

  String? model;

  String? serialNumber;

  WarrantyRead? warranty;

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

    return other is EquipmentRead &&
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

  static List<EquipmentRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <EquipmentRead>[];
    }

    return json.fold(<EquipmentRead>[],
        (List<EquipmentRead> previousValue, element) {
      final EquipmentRead? object = EquipmentRead.fromJson(element);
      if (object is EquipmentRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentRead>{};
    }

    return json.entries.fold(<String, EquipmentRead>{},
        (Map<String, EquipmentRead> previousValue, element) {
      final EquipmentRead? object = EquipmentRead.fromJson(element.value);
      if (object is EquipmentRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentRead-objects as value to a dart map
  static Map<String, List<EquipmentRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentRead>>(
          key, EquipmentRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentRead[brand=$brand, lifetime=$lifetime, model=$model, serialNumber=$serialNumber, warranty=$warranty, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
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
