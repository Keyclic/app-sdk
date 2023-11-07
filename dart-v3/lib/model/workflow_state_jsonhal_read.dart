//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WorkflowStateJsonhalRead {
  /// Returns a new [WorkflowStateJsonhalRead] instance.
  WorkflowStateJsonhalRead({
    this.links,
    this.color,
    required this.name,
    this.id,
  });

  /// Returns a new [WorkflowStateJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowStateJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowStateJsonhalRead(
      links: json[r'_links'] is! Map
          ? null
          : AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      color: json[r'color'],
      name: json[r'name'],
      id: json[r'id'],
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? color;

  String name;

  /// The resource identifier.
  final String? id;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowStateJsonhalRead &&
        other.links == links &&
        other.color == color &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (color == null ? 0 : color.hashCode) +
      name.hashCode +
      (id == null ? 0 : id.hashCode);

  static List<WorkflowStateJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowStateJsonhalRead>[];
    }

    return json.fold(<WorkflowStateJsonhalRead>[],
        (List<WorkflowStateJsonhalRead> previousValue, element) {
      final WorkflowStateJsonhalRead? object =
          WorkflowStateJsonhalRead.fromJson(element);
      if (object is WorkflowStateJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowStateJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowStateJsonhalRead>{};
    }

    return json.entries.fold(<String, WorkflowStateJsonhalRead>{},
        (Map<String, WorkflowStateJsonhalRead> previousValue, element) {
      final WorkflowStateJsonhalRead? object =
          WorkflowStateJsonhalRead.fromJson(element.value);
      if (object is WorkflowStateJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowStateJsonhalRead-objects as value to a dart map
  static Map<String, List<WorkflowStateJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowStateJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowStateJsonhalRead>>(
          key, WorkflowStateJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowStateJsonhalRead[links=$links, color=$color, name=$name, id=$id]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && color != null) ||
          (keys?.contains(r'color') ?? false))
        r'color': color,
      r'name': name,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
    };
  }
}
