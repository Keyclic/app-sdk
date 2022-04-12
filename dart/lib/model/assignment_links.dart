//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinks {
  /// Returns a new [AssignmentLinks] instance.
  AssignmentLinks({
    this.report,
    this.self,
    this.service,
  });

  /// Returns a new [AssignmentLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinks(
      report: AssignmentLinksReport.fromJson(json[r'report']),
      self: AssignmentLinksSelf.fromJson(json[r'self']),
      service: AssignmentLinksService.fromJson(json[r'service']),
    );
  }

  AssignmentLinksReport? report;

  AssignmentLinksSelf? self;

  AssignmentLinksService? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinks &&
        other.report == report &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (report == null ? 0 : report.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinks>[];
    }
    return json
        .map((value) {
          return AssignmentLinks.fromJson(value);
        })
        .whereType<AssignmentLinks>()
        .toList();
  }

  static Map<String, AssignmentLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, AssignmentLinks?>(
        key, AssignmentLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinks>;
  }

  // maps a json object with a list of AssignmentLinks-objects as value to a dart map
  static Map<String, List<AssignmentLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinks[report=$report, self=$self, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (report != null) r'report': report,
      if (self != null) r'self': self,
      if (service != null) r'service': service,
    };
  }
}
