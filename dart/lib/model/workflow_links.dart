//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowLinks {
  /// Returns a new [WorkflowLinks] instance.
  WorkflowLinks({
    this.self,
  });

  /// Returns a new [WorkflowLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinks(
      self: WorkflowLinksSelf.fromJson(json[r'self']),
    );
  }

  WorkflowLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<WorkflowLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WorkflowLinks>[];
    }
    return json
        .map((value) {
          return WorkflowLinks.fromJson(value);
        })
        .whereType<WorkflowLinks>()
        .toList();
  }

  static Map<String, WorkflowLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, WorkflowLinks?>(key, WorkflowLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, WorkflowLinks>;
  }

  // maps a json object with a list of WorkflowLinks-objects as value to a dart map
  static Map<String, List<WorkflowLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<WorkflowLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: WorkflowLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'WorkflowLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}
