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
      self: json[r'self'] is! Map
          ? null
          : WorkflowLinksSelf.fromJson(json[r'self']),
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

    return json.fold(<WorkflowLinks>[],
        (List<WorkflowLinks> previousValue, element) {
      final WorkflowLinks? object = WorkflowLinks.fromJson(element);
      if (object is WorkflowLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinks>{};
    }

    return json.entries.fold(<String, WorkflowLinks>{},
        (Map<String, WorkflowLinks> previousValue, element) {
      final WorkflowLinks? object = WorkflowLinks.fromJson(element.value);
      if (object is WorkflowLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowLinks-objects as value to a dart map
  static Map<String, List<WorkflowLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowLinks>>(
          key, WorkflowLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'WorkflowLinks[self=$self]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
