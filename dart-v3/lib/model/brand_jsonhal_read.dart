//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BrandJsonhalRead {
  /// Returns a new [BrandJsonhalRead] instance.
  BrandJsonhalRead({
    this.links,
    this.description,
    required this.name,
    this.id,
  });

  /// Returns a new [BrandJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BrandJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return BrandJsonhalRead(
      links: json[r'_links'] is! Map
          ? null
          : AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      name: json[r'name'],
      id: json[r'id'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

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

    return other is BrandJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode);

  static List<BrandJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BrandJsonhalRead>[];
    }

    return json.fold(<BrandJsonhalRead>[],
        (List<BrandJsonhalRead> previousValue, element) {
      final BrandJsonhalRead? object = BrandJsonhalRead.fromJson(element);
      if (object is BrandJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BrandJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BrandJsonhalRead>{};
    }

    return json.entries.fold(<String, BrandJsonhalRead>{},
        (Map<String, BrandJsonhalRead> previousValue, element) {
      final BrandJsonhalRead? object = BrandJsonhalRead.fromJson(element.value);
      if (object is BrandJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BrandJsonhalRead-objects as value to a dart map
  static Map<String, List<BrandJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BrandJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BrandJsonhalRead>>(
          key, BrandJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BrandJsonhalRead[links=$links, description=$description, name=$name, id=$id]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      r'name': name,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
    };
  }
}
