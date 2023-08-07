//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentJsonhalRead {
  /// Returns a new [EquipmentJsonhalRead] instance.
  EquipmentJsonhalRead({
    this.links,
    this.commissioningDate,
    this.lifetime,
    this.model,
    this.mpn,
    this.retirementDate,
    this.serialNumber,
    this.warranty,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.description,
    required this.name,
    this.address,
  });

  /// Returns a new [EquipmentJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return EquipmentJsonhalRead(
      links: EquipmentJsonhalReadLinks.fromJson(json[r'_links']),
      commissioningDate: commissioningDate,
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      mpn: json[r'mpn'],
      retirementDate: retirementDate,
      serialNumber: json[r'serialNumber'],
      warranty: json[r'warranty'] is Map ? WarrantyJsonhalRead.fromJson(json[r'warranty']) : null,
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
      description: json[r'description'],
      name: json[r'name'],
      address: PostalAddressJsonhalRead.fromJson(json[r'address']),
    );
  }

  EquipmentJsonhalReadLinks? links;

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

  WarrantyJsonhalRead? warranty;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  String? description;

  String name;

  PostalAddressJsonhalRead? address;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentJsonhalRead &&
        other.links == links &&
        other.commissioningDate == commissioningDate &&
        other.lifetime == lifetime &&
        other.model == model &&
        other.mpn == mpn &&
        other.retirementDate == retirementDate &&
        other.serialNumber == serialNumber &&
        other.warranty == warranty &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.description == description &&
        other.name == name &&
        other.address == address;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (commissioningDate == null ? 0 : commissioningDate.hashCode) +
      (lifetime == null ? 0 : lifetime.hashCode) +
      (model == null ? 0 : model.hashCode) +
      (mpn == null ? 0 : mpn.hashCode) +
      (retirementDate == null ? 0 : retirementDate.hashCode) +
      (serialNumber == null ? 0 : serialNumber.hashCode) +
      (warranty == null ? 0 : warranty.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (address == null ? 0 : address.hashCode);

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
      'EquipmentJsonhalRead[links=$links, commissioningDate=$commissioningDate, lifetime=$lifetime, model=$model, mpn=$mpn, retirementDate=$retirementDate, serialNumber=$serialNumber, warranty=$warranty, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, address=$address]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (commissioningDate != null)
        r'commissioningDate': commissioningDate!.toUtc().toIso8601String(),
      if (lifetime != null) r'lifetime': lifetime,
      if (model != null) r'model': model,
      if (mpn != null) r'mpn': mpn,
      if (retirementDate != null)
        r'retirementDate': retirementDate!.toUtc().toIso8601String(),
      if (serialNumber != null) r'serialNumber': serialNumber,
      if (warranty != null) r'warranty': warranty,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      r'name': name,
      if (address != null) r'address': address,
    };
  }
}
