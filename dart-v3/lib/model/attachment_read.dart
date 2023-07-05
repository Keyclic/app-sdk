//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AttachmentRead {
  /// Returns a new [AttachmentRead] instance.
  AttachmentRead({
    this.attachedTo,
    this.relation,
    this.resource,
  });

  /// Returns a new [AttachmentRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AttachmentRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AttachmentRead(
      attachedTo: json[r'attachedTo'],
      relation: json[r'relation'],
      resource: json[r'resource'],
    );
  }

  String? attachedTo;

  String? relation;

  String? resource;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AttachmentRead &&
        other.attachedTo == attachedTo &&
        other.relation == relation &&
        other.resource == resource;
  }

  @override
  int get hashCode =>
      (attachedTo == null ? 0 : attachedTo.hashCode) +
      (relation == null ? 0 : relation.hashCode) +
      (resource == null ? 0 : resource.hashCode);

  static List<AttachmentRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AttachmentRead>[];
    }

    return json.fold(<AttachmentRead>[],
        (List<AttachmentRead> previousValue, element) {
      final AttachmentRead? object = AttachmentRead.fromJson(element);
      if (object is AttachmentRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AttachmentRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AttachmentRead>{};
    }

    return json.entries.fold(<String, AttachmentRead>{},
        (Map<String, AttachmentRead> previousValue, element) {
      final AttachmentRead? object = AttachmentRead.fromJson(element.value);
      if (object is AttachmentRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AttachmentRead-objects as value to a dart map
  static Map<String, List<AttachmentRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AttachmentRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AttachmentRead>>(
          key, AttachmentRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AttachmentRead[attachedTo=$attachedTo, relation=$relation, resource=$resource]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (attachedTo != null) r'attachedTo': attachedTo,
      if (relation != null) r'relation': relation,
      if (resource != null) r'resource': resource,
    };
  }
}
