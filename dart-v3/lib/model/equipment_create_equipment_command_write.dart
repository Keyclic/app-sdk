//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class EquipmentCreateEquipmentCommandWrite {
  /// Returns a new [EquipmentCreateEquipmentCommandWrite] instance.
  EquipmentCreateEquipmentCommandWrite({
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

  /// Returns a new [EquipmentCreateEquipmentCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentCreateEquipmentCommandWrite? fromJson(
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

    return EquipmentCreateEquipmentCommandWrite(
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
      warranty: json[r'warranty'] is! Map
          ? null
          : WarrantyWrite.fromJson(json[r'warranty']),
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

  WarrantyWrite? warranty;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is EquipmentCreateEquipmentCommandWrite &&
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

  static List<EquipmentCreateEquipmentCommandWrite> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <EquipmentCreateEquipmentCommandWrite>[];
    }

    return json.fold(<EquipmentCreateEquipmentCommandWrite>[],
        (List<EquipmentCreateEquipmentCommandWrite> previousValue, element) {
      final EquipmentCreateEquipmentCommandWrite? object =
          EquipmentCreateEquipmentCommandWrite.fromJson(element);
      if (object is EquipmentCreateEquipmentCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, EquipmentCreateEquipmentCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, EquipmentCreateEquipmentCommandWrite>{};
    }

    return json.entries.fold(<String, EquipmentCreateEquipmentCommandWrite>{},
        (Map<String, EquipmentCreateEquipmentCommandWrite> previousValue,
            element) {
      final EquipmentCreateEquipmentCommandWrite? object =
          EquipmentCreateEquipmentCommandWrite.fromJson(element.value);
      if (object is EquipmentCreateEquipmentCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of EquipmentCreateEquipmentCommandWrite-objects as value to a dart map
  static Map<String, List<EquipmentCreateEquipmentCommandWrite>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<EquipmentCreateEquipmentCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<EquipmentCreateEquipmentCommandWrite>>(
          key, EquipmentCreateEquipmentCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'EquipmentCreateEquipmentCommandWrite[brand=$brand, commissioningDate=$commissioningDate, description=$description, lifetime=$lifetime, model=$model, mpn=$mpn, name=$name, parent=$parent, serialNumber=$serialNumber, state=$state, type=$type, warranty=$warranty]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && brand != null) ||
          (keys?.contains(r'brand') ?? false))
        r'brand': brand,
      if ((keys == null && commissioningDate != null) ||
          (keys?.contains(r'commissioningDate') ?? false))
        r'commissioningDate': commissioningDate?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && lifetime != null) ||
          (keys?.contains(r'lifetime') ?? false))
        r'lifetime': lifetime,
      if ((keys == null && model != null) ||
          (keys?.contains(r'model') ?? false))
        r'model': model,
      if ((keys == null && mpn != null) || (keys?.contains(r'mpn') ?? false))
        r'mpn': mpn,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && parent != null) ||
          (keys?.contains(r'parent') ?? false))
        r'parent': parent,
      if ((keys == null && serialNumber != null) ||
          (keys?.contains(r'serialNumber') ?? false))
        r'serialNumber': serialNumber,
      if ((keys == null && state != null) ||
          (keys?.contains(r'state') ?? false))
        r'state': state,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && warranty != null) ||
          (keys?.contains(r'warranty') ?? false))
        r'warranty': warranty?.toJson(),
    };
  }
}
