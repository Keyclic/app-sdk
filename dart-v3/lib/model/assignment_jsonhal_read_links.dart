//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class AssignmentJsonhalReadLinks {
  /// Returns a new [AssignmentJsonhalReadLinks] instance.
  AssignmentJsonhalReadLinks({
    required this.self,
    this.contract,
    this.member,
    this.service,
  });

  /// Returns a new [AssignmentJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self'])!,
      contract:
          GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'contract']),
      member: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'member']),
      service:
          GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'service']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf self;

  GetPlaceCollection200ResponseLinksFirst? contract;

  GetPlaceCollection200ResponseLinksFirst? member;

  GetPlaceCollection200ResponseLinksFirst? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentJsonhalReadLinks &&
        other.self == self &&
        other.contract == contract &&
        other.member == member &&
        other.service == service;
  }

  @override
  int get hashCode =>
      self.hashCode +
      (contract == null ? 0 : contract.hashCode) +
      (member == null ? 0 : member.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignmentJsonhalReadLinks>[];
    }

    return json.fold(<AssignmentJsonhalReadLinks>[],
        (List<AssignmentJsonhalReadLinks> previousValue, element) {
      final AssignmentJsonhalReadLinks? object =
          AssignmentJsonhalReadLinks.fromJson(element);
      if (object is AssignmentJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, AssignmentJsonhalReadLinks>{},
        (Map<String, AssignmentJsonhalReadLinks> previousValue, element) {
      final AssignmentJsonhalReadLinks? object =
          AssignmentJsonhalReadLinks.fromJson(element.value);
      if (object is AssignmentJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<AssignmentJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentJsonhalReadLinks>>(
          key, AssignmentJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentJsonhalReadLinks[self=$self, contract=$contract, member=$member, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'self': self.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^self\.'))) {
          previousValue.add(element.split(RegExp(r'^self\.')).last);
        }

        return previousValue;
      })),
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
