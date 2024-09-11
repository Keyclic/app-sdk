//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TargetGroupJsonhalRead {
  /// Returns a new [TargetGroupJsonhalRead] instance.
  TargetGroupJsonhalRead({
    this.links,
    this.description,
    this.id,
    this.name,
  });

  /// Returns a new [TargetGroupJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TargetGroupJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TargetGroupJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  final String? description;

  String? id;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TargetGroupJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.id == id &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<TargetGroupJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TargetGroupJsonhalRead>[];
    }

    return json.fold(<TargetGroupJsonhalRead>[],
        (List<TargetGroupJsonhalRead> previousValue, element) {
      final TargetGroupJsonhalRead? object =
          TargetGroupJsonhalRead.fromJson(element);
      if (object is TargetGroupJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TargetGroupJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TargetGroupJsonhalRead>{};
    }

    return json.entries.fold(<String, TargetGroupJsonhalRead>{},
        (Map<String, TargetGroupJsonhalRead> previousValue, element) {
      final TargetGroupJsonhalRead? object =
          TargetGroupJsonhalRead.fromJson(element.value);
      if (object is TargetGroupJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TargetGroupJsonhalRead-objects as value to a dart map
  static Map<String, List<TargetGroupJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TargetGroupJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TargetGroupJsonhalRead>>(
          key, TargetGroupJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TargetGroupJsonhalRead[links=$links, description=$description, id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
