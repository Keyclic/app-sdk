//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class WorkflowLinksSelf {
  /// Returns a new [WorkflowLinksSelf] instance.
  WorkflowLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [WorkflowLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkflowLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WorkflowLinksSelf(
      href: json[r'href'],
      iriTemplate: WorkflowLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given workflow.
  String? href;

  WorkflowLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<WorkflowLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <WorkflowLinksSelf>[];
    }

    return json.fold(<WorkflowLinksSelf>[],
        (List<WorkflowLinksSelf> previousValue, element) {
      final WorkflowLinksSelf? object = WorkflowLinksSelf.fromJson(element);
      if (object is WorkflowLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WorkflowLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WorkflowLinksSelf>{};
    }

    return json.entries.fold(<String, WorkflowLinksSelf>{},
        (Map<String, WorkflowLinksSelf> previousValue, element) {
      final WorkflowLinksSelf? object =
          WorkflowLinksSelf.fromJson(element.value);
      if (object is WorkflowLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WorkflowLinksSelf-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WorkflowLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WorkflowLinksSelf>>(
          key, WorkflowLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WorkflowLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
