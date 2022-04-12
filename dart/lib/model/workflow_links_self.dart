//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class WorkflowLinksSelf {
  /// Returns a new [WorkflowLinksSelf] instance.
  WorkflowLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [WorkflowLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory WorkflowLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelf(
      href: json[r'href'],
      iriTemplate: WorkflowLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given workflow.
  String href;

  WorkflowLinksSelfIriTemplate iriTemplate;

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

  static List<WorkflowLinksSelf> listFromJson(List<dynamic> json) {
    return <WorkflowLinksSelf>[
      if (json is List)
        for (dynamic value in json) WorkflowLinksSelf.fromJson(value),
    ];
  }

  static Map<String, WorkflowLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, WorkflowLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: WorkflowLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of WorkflowLinksSelf-objects as value to a dart map
  static Map<String, List<WorkflowLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<WorkflowLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: WorkflowLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'WorkflowLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
