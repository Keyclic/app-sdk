//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowTransitionJsonhalRead {
  /// Returns a new [WorkflowTransitionJsonhalRead] instance.
  WorkflowTransitionJsonhalRead({
    this.links,
    this.description,
    this.fields,
    required this.name,
    this.required_,
    this.id,
    this.embedded,
  });

  /// Returns a new [WorkflowTransitionJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowTransitionJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WorkflowTransitionJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      description: json[r'description'],
      fields:
          json[r'fields'] == null ? null : List<String>.from(json[r'fields']),
      name: json[r'name'],
      required_: json[r'required'] == null
          ? null
          : List<String>.from(json[r'required']),
      id: json[r'id'],
      embedded:
          WorkflowTransitionJsonhalReadEmbedded.fromJson(json[r'_embedded']),
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  String? description;

  List<String>? fields;

  String name;

  List<String>? required_;

  /// The resource identifier.
  final String? id;

  WorkflowTransitionJsonhalReadEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowTransitionJsonhalRead &&
        other.links == links &&
        other.description == description &&
        DeepCollectionEquality.unordered().equals(fields, other.fields) &&
        other.name == name &&
        DeepCollectionEquality.unordered().equals(required_, other.required_) &&
        other.id == id &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (fields == null ? 0 : fields.hashCode) +
      name.hashCode +
      (required_ == null ? 0 : required_.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<WorkflowTransitionJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <WorkflowTransitionJsonhalRead>[];
    }

    return json.fold(<WorkflowTransitionJsonhalRead>[],
        (List<WorkflowTransitionJsonhalRead> previousValue, element) {
      final WorkflowTransitionJsonhalRead? object =
          WorkflowTransitionJsonhalRead.fromJson(element);
      if (object is WorkflowTransitionJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowTransitionJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowTransitionJsonhalRead>{};
    }

    return json.entries.fold(<String, WorkflowTransitionJsonhalRead>{},
        (Map<String, WorkflowTransitionJsonhalRead> previousValue, element) {
      final WorkflowTransitionJsonhalRead? object =
          WorkflowTransitionJsonhalRead.fromJson(element.value);
      if (object is WorkflowTransitionJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowTransitionJsonhalRead-objects as value to a dart map
  static Map<String, List<WorkflowTransitionJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowTransitionJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowTransitionJsonhalRead>>(
          key, WorkflowTransitionJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowTransitionJsonhalRead[links=$links, description=$description, fields=$fields, name=$name, required_=$required_, id=$id, embedded=$embedded]';

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
      if (keys == null || keys.contains(r'fields')) r'fields': fields,
      r'name': name,
      if (keys == null || keys.contains(r'required_')) r'required': required_,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
