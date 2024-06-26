//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServicePatch {
  /// Returns a new [ExternalServicePatch] instance.
  ExternalServicePatch({
    this.address,
    this.contactPoint,
    this.description,
    this.name,
  });

  /// Returns a new [ExternalServicePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServicePatch? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServicePatch(
      address: ExternalServicePatchAddress.fromJson(json[r'address']),
      contactPoint:
          ExternalServicePatchContactPoint.fromJson(json[r'contactPoint']),
      description: json[r'description'],
      name: json[r'name'],
    );
  }

  ExternalServicePatchAddress? address;

  ExternalServicePatchContactPoint? contactPoint;

  String? description;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatch &&
        other.address == address &&
        other.contactPoint == contactPoint &&
        other.description == description &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (address == null ? 0 : address.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<ExternalServicePatch> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServicePatch>[];
    }

    return json.fold(<ExternalServicePatch>[],
        (List<ExternalServicePatch> previousValue, element) {
      final ExternalServicePatch? object =
          ExternalServicePatch.fromJson(element);
      if (object is ExternalServicePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServicePatch> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePatch>{};
    }

    return json.entries.fold(<String, ExternalServicePatch>{},
        (Map<String, ExternalServicePatch> previousValue, element) {
      final ExternalServicePatch? object =
          ExternalServicePatch.fromJson(element.value);
      if (object is ExternalServicePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServicePatch-objects as value to a dart map
  static Map<String, List<ExternalServicePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServicePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServicePatch>>(
          key, ExternalServicePatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServicePatch[address=$address, contactPoint=$contactPoint, description=$description, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^address\.').hasMatch(key)))
        r'address': address?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^address\.'))) {
            previousValue.add(element.split(RegExp(r'^address\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^contactPoint\.').hasMatch(key)))
        r'contactPoint': contactPoint?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contactPoint\.'))) {
            previousValue.add(element.split(RegExp(r'^contactPoint\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
