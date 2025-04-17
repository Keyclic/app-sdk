//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AttachmentJsonhalRead {
  /// Returns a new [AttachmentJsonhalRead] instance.
  AttachmentJsonhalRead({
    this.links,
    this.name,
    this.relation,
    this.downloadUrl,
  });

  /// Returns a new [AttachmentJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AttachmentJsonhalRead(
      links: AttachmentJsonhalReadLinks.fromJson(json[r'_links']),
      name: json[r'name'],
      relation: json[r'relation'],
      downloadUrl: json[r'downloadUrl'],
    );
  }

  AttachmentJsonhalReadLinks? links;

  String? name;

  String? relation;

  String? downloadUrl;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AttachmentJsonhalRead &&
        other.links == links &&
        other.name == name &&
        other.relation == relation &&
        other.downloadUrl == downloadUrl;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (relation == null ? 0 : relation.hashCode) +
      (downloadUrl == null ? 0 : downloadUrl.hashCode);

  static List<AttachmentJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <AttachmentJsonhalRead>[];
    }

    return json.fold(<AttachmentJsonhalRead>[],
        (List<AttachmentJsonhalRead> previousValue, element) {
      final AttachmentJsonhalRead? object =
          AttachmentJsonhalRead.fromJson(element);
      if (object is AttachmentJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AttachmentJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AttachmentJsonhalRead>{};
    }

    return json.entries.fold(<String, AttachmentJsonhalRead>{},
        (Map<String, AttachmentJsonhalRead> previousValue, element) {
      final AttachmentJsonhalRead? object =
          AttachmentJsonhalRead.fromJson(element.value);
      if (object is AttachmentJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AttachmentJsonhalRead-objects as value to a dart map
  static Map<String, List<AttachmentJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AttachmentJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AttachmentJsonhalRead>>(
          key, AttachmentJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AttachmentJsonhalRead[links=$links, name=$name, relation=$relation, downloadUrl=$downloadUrl]';

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
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'relation')) r'relation': relation,
      if (keys == null || keys.contains(r'downloadUrl'))
        r'downloadUrl': downloadUrl,
    };
  }
}
