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
    this.preferences,
    this.address,
    this.parent,
    this.state,
  });

  /// Returns a new [EquipmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static EquipmentRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return EquipmentRead(
      brand: json[r'brand'],
      commissioningDate: mapToDateTime(json[r'commissioningDate']),
      lifetime: json[r'lifetime'],
      model: json[r'model'],
      mpn: json[r'mpn'],
      retirementDate: mapToDateTime(json[r'retirementDate']),
      serialNumber: json[r'serialNumber'],
      warranty: WarrantyRead.fromJson(json[r'warranty']),
      type: json[r'type'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      description: json[r'description'],
      name: json[r'name'],
      preferences: PreferencesRead.fromJson(json[r'preferences']),
      address: PostalAddressRead.fromJson(json[r'address']),
      parent: json[r'parent'],
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

  PreferencesRead? preferences;

  PostalAddressRead? address;

  String? parent;

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
        other.preferences == preferences &&
        other.address == address &&
        other.parent == parent &&
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
      (preferences == null ? 0 : preferences.hashCode) +
      (address == null ? 0 : address.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<EquipmentRead> listFromJson(Iterable? json) {
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
      'EquipmentRead[brand=$brand, commissioningDate=$commissioningDate, lifetime=$lifetime, model=$model, mpn=$mpn, retirementDate=$retirementDate, serialNumber=$serialNumber, warranty=$warranty, type=$type, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, description=$description, name=$name, preferences=$preferences, address=$address, parent=$parent, state=$state]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'brand')) r'brand': brand,
      if (keys == null || keys.contains(r'commissioningDate'))
        r'commissioningDate': commissioningDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'lifetime')) r'lifetime': lifetime,
      if (keys == null || keys.contains(r'model')) r'model': model,
      if (keys == null || keys.contains(r'mpn')) r'mpn': mpn,
      if (keys == null || keys.contains(r'retirementDate'))
        r'retirementDate': retirementDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'serialNumber'))
        r'serialNumber': serialNumber,
      if (keys == null ||
          keys.any((key) => RegExp(r'^warranty\.').hasMatch(key)))
        r'warranty': warranty?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^warranty\.'))) {
            previousValue.add(element.split(RegExp(r'^warranty\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      r'name': name,
      if (keys == null ||
          keys.any((key) => RegExp(r'^preferences\.').hasMatch(key)))
        r'preferences': preferences?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^preferences\.'))) {
            previousValue.add(element.split(RegExp(r'^preferences\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      if (keys == null || keys.contains(r'state')) r'state': state,
    };
  }
}
