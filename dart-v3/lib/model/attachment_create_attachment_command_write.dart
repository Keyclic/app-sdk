//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AttachmentCreateAttachmentCommandWrite {
  /// Returns a new [AttachmentCreateAttachmentCommandWrite] instance.
  AttachmentCreateAttachmentCommandWrite({
    required this.attachedTo,
    this.relation,
    required this.resource,
  });

  /// Returns a new [AttachmentCreateAttachmentCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentCreateAttachmentCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AttachmentCreateAttachmentCommandWrite(
      attachedTo: json[r'attachedTo'],
      relation: json[r'relation'],
      resource: json[r'resource'],
    );
  }

  /// IRI resource is attached to.
  String attachedTo;

  /// Attachment relation (optional).
  String? relation;

  /// IRI of the attached ressource.
  String resource;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AttachmentCreateAttachmentCommandWrite &&
        other.attachedTo == attachedTo &&
        other.relation == relation &&
        other.resource == resource;
  }

  @override
  int get hashCode =>
      attachedTo.hashCode +
      (relation == null ? 0 : relation.hashCode) +
      resource.hashCode;

  static List<AttachmentCreateAttachmentCommandWrite> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <AttachmentCreateAttachmentCommandWrite>[];
    }

    return json.fold(<AttachmentCreateAttachmentCommandWrite>[],
        (List<AttachmentCreateAttachmentCommandWrite> previousValue, element) {
      final AttachmentCreateAttachmentCommandWrite? object =
          AttachmentCreateAttachmentCommandWrite.fromJson(element);
      if (object is AttachmentCreateAttachmentCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AttachmentCreateAttachmentCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AttachmentCreateAttachmentCommandWrite>{};
    }

    return json.entries.fold(<String, AttachmentCreateAttachmentCommandWrite>{},
        (Map<String, AttachmentCreateAttachmentCommandWrite> previousValue,
            element) {
      final AttachmentCreateAttachmentCommandWrite? object =
          AttachmentCreateAttachmentCommandWrite.fromJson(element.value);
      if (object is AttachmentCreateAttachmentCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AttachmentCreateAttachmentCommandWrite-objects as value to a dart map
  static Map<String, List<AttachmentCreateAttachmentCommandWrite>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AttachmentCreateAttachmentCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AttachmentCreateAttachmentCommandWrite>>(
          key, AttachmentCreateAttachmentCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AttachmentCreateAttachmentCommandWrite[attachedTo=$attachedTo, relation=$relation, resource=$resource]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'attachedTo': attachedTo,
      if (keys == null || keys.contains(r'relation')) r'relation': relation,
      r'resource': resource,
    };
  }
}
