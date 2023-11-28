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
    this.type,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.warranty,
    this.description,
    required this.name,
    this.parent,
    this.state,
    this.address,
  });

  /// Returns a new [EquipmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? commissioningDate = json[r'commissioningDate'] == null
        ? null
        : DateTime.parse(json[r'commissioningDate']);
    if (commissioningDate != null && commissioningDate.isUtc == false) {
      commissioningDate = DateTime.parse('${json[r'commissioningDate']}Z');
    }

    DateTime? retirementDate = json[r'retirementDate'] == null
        ? null
        : DateTime.parse(json[r'retirementDate']);
    if (retirementDate != null && retirementDate.isUtc == false) {
      retirementDate = DateTime.parse('${json[r'retirementDate']}Z');
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

    return EquipmentRead(
      brand: json[r'brand'],
      commissioningDate: commissioningDate,
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      mpn: json[r'mpn'],
      retirementDate: retirementDate,
      serialNumber: json[r'serialNumber'],
      type: json[r'type'],
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      warranty: WarrantyRead.fromJson(json[r'warranty']),
      description: json[r'description'],
      name: json[r'name'],
      parent: json[r'parent'],
      state: json[r'state'],
      address: PostalAddressRead.fromJson(json[r'address']),
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

  String? type;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  WarrantyRead? warranty;

  String? description;

  String name;

  String? parent;

  String? state;

  PostalAddressRead? address;

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
        other.type == type &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.warranty == warranty &&
        other.description == description &&
        other.name == name &&
        other.parent == parent &&
        other.state == state &&
        other.address == address;
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
      (type == null ? 0 : type.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (warranty == null ? 0 : warranty.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (address == null ? 0 : address.hashCode);

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
      'EquipmentRead[brand=$brand, commissioningDate=$commissioningDate, lifetime=$lifetime, model=$model, mpn=$mpn, retirementDate=$retirementDate, serialNumber=$serialNumber, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, warranty=$warranty, description=$description, name=$name, parent=$parent, state=$state, address=$address]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && brand != null) ||
          (keys?.contains(r'brand') ?? false))
        r'brand': brand,
      if ((keys == null && commissioningDate != null) ||
          (keys?.contains(r'commissioningDate') ?? false))
        r'commissioningDate': commissioningDate?.toUtc().toIso8601String(),
      if ((keys == null && lifetime != null) ||
          (keys?.contains(r'lifetime') ?? false))
        r'lifetime': lifetime,
      if ((keys == null && model != null) ||
          (keys?.contains(r'model') ?? false))
        r'model': model,
      if ((keys == null && mpn != null) || (keys?.contains(r'mpn') ?? false))
        r'mpn': mpn,
      if ((keys == null && retirementDate != null) ||
          (keys?.contains(r'retirementDate') ?? false))
        r'retirementDate': retirementDate?.toUtc().toIso8601String(),
      if ((keys == null && serialNumber != null) ||
          (keys?.contains(r'serialNumber') ?? false))
        r'serialNumber': serialNumber,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if ((keys == null && warranty != null) ||
          (keys?.contains(r'warranty') ?? false))
        r'warranty': warranty?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      r'name': name,
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
