//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServicePatch {
  /// Returns a new [InternalServicePatch] instance.
  InternalServicePatch({
    this.address,
    this.contactPoint,
    this.description,
    this.manager,
    this.name,
  });

  /// Returns a new [InternalServicePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServicePatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServicePatch(
      address: json[r'address'] is! Map
          ? null
          : ExternalServicePatchAddress.fromJson(json[r'address']),
      contactPoint: json[r'contactPoint'] is! Map
          ? null
          : ExternalServicePatchContactPoint.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      manager: json[r'manager'],
      name: json[r'name'],
    );
  }

  ExternalServicePatchAddress? address;

  ExternalServicePatchContactPoint? contactPoint;

  String? description;

  String? manager;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServicePatch &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.manager == manager &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (manager == null ? 0 : manager.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<InternalServicePatch> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <InternalServicePatch>[];
    }

    return json.fold(<InternalServicePatch>[],
        (List<InternalServicePatch> previousValue, element) {
      final InternalServicePatch? object =
          InternalServicePatch.fromJson(element);
      if (object is InternalServicePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InternalServicePatch> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServicePatch>{};
    }

    return json.entries.fold(<String, InternalServicePatch>{},
        (Map<String, InternalServicePatch> previousValue, element) {
      final InternalServicePatch? object =
          InternalServicePatch.fromJson(element.value);
      if (object is InternalServicePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InternalServicePatch-objects as value to a dart map
  static Map<String, List<InternalServicePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InternalServicePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InternalServicePatch>>(
          key, InternalServicePatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InternalServicePatch[address=$address, contactPoint=$contactPoint, description=$description, manager=$manager, name=$name]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && address != null) ||
          (keys?.contains(r'address') ?? false))
        r'address': address?.toJson(),
      if ((keys == null && contactPoint != null) ||
          (keys?.contains(r'contactPoint') ?? false))
        r'contactPoint': contactPoint?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && manager != null) ||
          (keys?.contains(r'manager') ?? false))
        r'manager': manager,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
    };
  }
}
