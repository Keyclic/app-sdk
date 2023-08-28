//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentEditEquipmentCommandWrite {
  /// Returns a new [EquipmentEditEquipmentCommandWrite] instance.
  EquipmentEditEquipmentCommandWrite({
    this.brand,
    this.commissioningDate,
    this.description,
    this.lifetime,
    this.model,
    this.mpn,
    this.name,
    this.parent,
    this.serialNumber,
    this.state,
    this.type,
    this.warranty,
  });

  /// Returns a new [EquipmentEditEquipmentCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentEditEquipmentCommandWrite? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? commissioningDate = json[r'commissioningDate'] == null
        ? null
        : DateTime.parse(json[r'commissioningDate']);
    if (commissioningDate != null && commissioningDate.isUtc == false) {
      commissioningDate = DateTime.parse('${json[r'commissioningDate']}Z');
    }

    return EquipmentEditEquipmentCommandWrite(
      brand: json[r'brand'],
      commissioningDate: commissioningDate,
      description: json[r'description'],
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      mpn: json[r'mpn'],
      name: json[r'name'],
      parent: json[r'parent'],
      serialNumber: json[r'serialNumber'],
      state: json[r'state'],
      type: json[r'type'],
      warranty: EquipmentCreateEquipmentCommandWriteWarranty.fromJson(
          json[r'warranty']),
    );
  }

  String? brand;

  DateTime? commissioningDate;

  String? description;

  String? lifetime;

  String? model;

  String? mpn;

  String? name;

  String? parent;

  String? serialNumber;

  String? state;

  String? type;

  EquipmentCreateEquipmentCommandWriteWarranty? warranty;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentEditEquipmentCommandWrite &&
        other.brand == brand &&
        other.commissioningDate == commissioningDate &&
        other.description == description &&
        other.lifetime == lifetime &&
        other.model == model &&
        other.mpn == mpn &&
        other.name == name &&
        other.parent == parent &&
        other.serialNumber == serialNumber &&
        other.state == state &&
        other.type == type &&
        other.warranty == warranty;
  }

  @override
  int get hashCode =>
      (brand == null ? 0 : brand.hashCode) +
      (commissioningDate == null ? 0 : commissioningDate.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (lifetime == null ? 0 : lifetime.hashCode) +
      (model == null ? 0 : model.hashCode) +
      (mpn == null ? 0 : mpn.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (serialNumber == null ? 0 : serialNumber.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (warranty == null ? 0 : warranty.hashCode);

  static List<EquipmentEditEquipmentCommandWrite> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <EquipmentEditEquipmentCommandWrite>[];
    }

    return json.fold(<EquipmentEditEquipmentCommandWrite>[],
        (List<EquipmentEditEquipmentCommandWrite> previousValue, element) {
      final EquipmentEditEquipmentCommandWrite? object =
          EquipmentEditEquipmentCommandWrite.fromJson(element);
      if (object is EquipmentEditEquipmentCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentEditEquipmentCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentEditEquipmentCommandWrite>{};
    }

    return json.entries.fold(<String, EquipmentEditEquipmentCommandWrite>{},
        (Map<String, EquipmentEditEquipmentCommandWrite> previousValue,
            element) {
      final EquipmentEditEquipmentCommandWrite? object =
          EquipmentEditEquipmentCommandWrite.fromJson(element.value);
      if (object is EquipmentEditEquipmentCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentEditEquipmentCommandWrite-objects as value to a dart map
  static Map<String, List<EquipmentEditEquipmentCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentEditEquipmentCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentEditEquipmentCommandWrite>>(
          key, EquipmentEditEquipmentCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentEditEquipmentCommandWrite[brand=$brand, commissioningDate=$commissioningDate, description=$description, lifetime=$lifetime, model=$model, mpn=$mpn, name=$name, parent=$parent, serialNumber=$serialNumber, state=$state, type=$type, warranty=$warranty]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (brand != null) r'brand': brand,
      if (commissioningDate != null)
        r'commissioningDate': commissioningDate!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (lifetime != null) r'lifetime': lifetime,
      if (model != null) r'model': model,
      if (mpn != null) r'mpn': mpn,
      if (name != null) r'name': name,
      if (parent != null) r'parent': parent,
      if (serialNumber != null) r'serialNumber': serialNumber,
      if (state != null) r'state': state,
      if (type != null) r'type': type,
      if (warranty != null) r'warranty': warranty,
    };
  }
}