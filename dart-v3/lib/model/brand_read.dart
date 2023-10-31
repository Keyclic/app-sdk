//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BrandRead {
  /// Returns a new [BrandRead] instance.
  BrandRead({
    this.description,
    required this.name,
    this.id,
  });

  /// Returns a new [BrandRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BrandRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BrandRead(
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
    );
  }

  /// Detailed description of brand.
  String? description;

  /// Name of the brand.
  String name;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BrandRead &&
        other.description == description &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode);

  static List<BrandRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BrandRead>[];
    }

    return json.fold(<BrandRead>[], (List<BrandRead> previousValue, element) {
      final BrandRead? object = BrandRead.fromJson(element);
      if (object is BrandRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BrandRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BrandRead>{};
    }

    return json.entries.fold(<String, BrandRead>{},
        (Map<String, BrandRead> previousValue, element) {
      final BrandRead? object = BrandRead.fromJson(element.value);
      if (object is BrandRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BrandRead-objects as value to a dart map
  static Map<String, List<BrandRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BrandRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BrandRead>>(
          key, BrandRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BrandRead[description=$description, name=$name, id=$id]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      r'name': name,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
    };
  }
}
