//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinks {
  /// Returns a new [AssignmentLinks] instance.
  AssignmentLinks({
    this.contract,
    this.member,
    this.report,
    this.self,
    this.service,
  });

  /// Returns a new [AssignmentLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinks(
      contract: AssignmentLinksContract.fromJson(json[r'contract']),
      member: AssignmentLinksMember.fromJson(json[r'member']),
      report: AssignmentLinksReport.fromJson(json[r'report']),
      self: AssignmentLinksSelf.fromJson(json[r'self']),
      service: AssignmentLinksService.fromJson(json[r'service']),
    );
  }

  AssignmentLinksContract? contract;

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
        other.contract == contract &&
        other.member == member &&
        other.report == report &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (contract == null ? 0 : contract.hashCode) +
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
      'AssignmentLinks[contract=$contract, member=$member, report=$report, self=$self, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^contract\.').hasMatch(key)))
        r'contract': contract?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^contract\.'))) {
            previousValue.add(element.split(RegExp(r'^contract\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^report\.').hasMatch(key)))
        r'report': report?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^report\.'))) {
            previousValue.add(element.split(RegExp(r'^report\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^service\.').hasMatch(key)))
        r'service': service?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^service\.'))) {
            previousValue.add(element.split(RegExp(r'^service\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
