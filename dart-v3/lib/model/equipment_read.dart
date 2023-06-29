//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentRead {
  /// Returns a new [EquipmentRead] instance.
  EquipmentRead({
    this.brand,
    this.commissioningDate,
    this.lifetime,
    this.model,
    this.mpn,
    this.retirementDate,
    this.serialNumber,
    this.warranty,
    this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.state,
  });

  /// Returns a new [EquipmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? commissioningDate = json[r'commissioningDate'] is String
        ? DateTime.parse(json[r'commissioningDate'])
        : null;
    if (commissioningDate is DateTime && commissioningDate.isUtc == false) {
      commissioningDate = DateTime.parse('${json[r'commissioningDate']}Z');
    }

    DateTime? retirementDate = json[r'retirementDate'] is String
        ? DateTime.parse(json[r'retirementDate'])
        : null;
    if (retirementDate is DateTime && retirementDate.isUtc == false) {
      retirementDate = DateTime.parse('${json[r'retirementDate']}Z');
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
      commissioningDate: commissioningDate,
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      mpn: json[r'mpn'],
      retirementDate: retirementDate,
      serialNumber: json[r'serialNumber'],
      warranty: WarrantyRead.fromJson(json[r'warranty']),
      type: json[r'type'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
      state: json[r'state'],
    );
  }

  /// The brand of the asset. The brand refers to the specific manufacturer or company that produces or sells an asset.
  String? brand;

  /// The date when an asset is officially put into service or operation.
  DateTime? commissioningDate;

  /// The expected or estimated duration of an asset's useful life or operational lifespan.
  String? lifetime;

  /// The model of the asset. The model provides detailed information about the features, capabilities, and technical specifications of the asset.
  String? model;

  /// The Manufacturer Part Number (MPN) is a unique identifier assigned by the manufacturer to a specific part or component of an asset.
  String? mpn;

  /// The date when an asset is expected to reach the end of its operational life based on the commissioning date and the estimated lifetime.
  final DateTime? retirementDate;

  /// The unique identifier assigned to an individual asset, allowing for easy identification and tracking.
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

  String? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentRead &&
        other.brand == brand &&
        other.commissioningDate == commissioningDate &&
        other.lifetime == lifetime &&
        other.model == model &&
        other.mpn == mpn &&
        other.retirementDate == retirementDate &&
        other.serialNumber == serialNumber &&
        other.warranty == warranty &&
        other.type == type &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (brand == null ? 0 : brand.hashCode) +
      (commissioningDate == null ? 0 : commissioningDate.hashCode) +
      (lifetime == null ? 0 : lifetime.hashCode) +
      (model == null ? 0 : model.hashCode) +
      (mpn == null ? 0 : mpn.hashCode) +
      (retirementDate == null ? 0 : retirementDate.hashCode) +
      (serialNumber == null ? 0 : serialNumber.hashCode) +
      (warranty == null ? 0 : warranty.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (state == null ? 0 : state.hashCode);

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
      'EquipmentRead[brand=$brand, commissioningDate=$commissioningDate, lifetime=$lifetime, model=$model, mpn=$mpn, retirementDate=$retirementDate, serialNumber=$serialNumber, warranty=$warranty, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, state=$state]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (brand != null) r'brand': brand,
      if (commissioningDate != null)
        r'commissioningDate': commissioningDate!.toUtc().toIso8601String(),
      if (lifetime != null) r'lifetime': lifetime,
      if (model != null) r'model': model,
      if (mpn != null) r'mpn': mpn,
      if (retirementDate != null)
        r'retirementDate': retirementDate!.toUtc().toIso8601String(),
      if (serialNumber != null) r'serialNumber': serialNumber,
      if (warranty != null) r'warranty': warranty,
      if (type != null) r'type': type,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      r'name': name,
      if (state != null) r'state': state,
    };
  }
}
