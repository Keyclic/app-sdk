//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AttachmentJsonhalRead {
  /// Returns a new [AttachmentJsonhalRead] instance.
  AttachmentJsonhalRead({
    this.links,
    this.relation,
  });

  /// Returns a new [AttachmentJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AttachmentJsonhalRead(
      links: AttachmentJsonhalReadLinks.fromJson(json[r'_links']),
      relation: json[r'relation'],
    );
  }

  AttachmentJsonhalReadLinks? links;

  String? relation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AttachmentJsonhalRead &&
        other.links == links &&
        other.relation == relation;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (relation == null ? 0 : relation.hashCode);

  static List<AttachmentJsonhalRead> listFromJson(List<dynamic>? json) {
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
      'AttachmentJsonhalRead[links=$links, relation=$relation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (relation != null) r'relation': relation,
    };
  }
}
