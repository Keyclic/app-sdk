//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinks {
  /// Returns a new [AssignmentLinks] instance.
  AssignmentLinks({
    this.member,
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
      member: AssignmentLinksMember.fromJson(json[r'member']),
      report: AssignmentLinksReport.fromJson(json[r'report']),
      self: AssignmentLinksSelf.fromJson(json[r'self']),
      service: AssignmentLinksService.fromJson(json[r'service']),
    );
  }

  AssignmentLinksMember? member;

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
        other.member == member &&
        other.report == report &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (member == null ? 0 : member.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinks>[];
    }

    return json.fold(<AssignmentLinks>[],
        (List<AssignmentLinks> previousValue, element) {
      final AssignmentLinks? object = AssignmentLinks.fromJson(element);
      if (object is AssignmentLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinks>{};
    }

    return json.entries.fold(<String, AssignmentLinks>{},
        (Map<String, AssignmentLinks> previousValue, element) {
      final AssignmentLinks? object = AssignmentLinks.fromJson(element.value);
      if (object is AssignmentLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinks-objects as value to a dart map
  static Map<String, List<AssignmentLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinks>>(
          key, AssignmentLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinks[member=$member, report=$report, self=$self, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (member != null) r'member': member,
      if (report != null) r'report': report,
      if (self != null) r'self': self,
      if (service != null) r'service': service,
    };
  }
}
