//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalReadLinks {
  /// Returns a new [TicketJsonhalReadLinks] instance.
  TicketJsonhalReadLinks({
    required this.self,
    required this.organization,
    this.parent,
    this.assignments = const [],
    this.equipments = const [],
    this.children = const [],
  });

  /// Returns a new [TicketJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'self'])!,
      organization: GetPlaceCollection200ResponseLinksFirst.fromJson(
          json[r'organization'])!,
      parent: AssetJsonhalReadLinksType.fromJson(json[r'parent']),
      assignments: GetPlaceCollection200ResponseLinksFirst.listFromJson(
          json[r'assignments']),
      equipments: GetPlaceCollection200ResponseLinksFirst.listFromJson(
          json[r'equipments']),
      children: GetPlaceCollection200ResponseLinksFirst.listFromJson(
          json[r'children']),
    );
  }

  GetPlaceCollection200ResponseLinksFirst self;

  GetPlaceCollection200ResponseLinksFirst organization;

  AssetJsonhalReadLinksType? parent;

  List<GetPlaceCollection200ResponseLinksFirst> assignments;

  List<GetPlaceCollection200ResponseLinksFirst> equipments;

  List<GetPlaceCollection200ResponseLinksFirst> children;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalReadLinks &&
        other.self == self &&
        other.organization == organization &&
        other.parent == parent &&
        DeepCollectionEquality.unordered()
            .equals(assignments, other.assignments) &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        DeepCollectionEquality.unordered().equals(children, other.children);
  }

  @override
  int get hashCode =>
      self.hashCode +
      organization.hashCode +
      (parent == null ? 0 : parent.hashCode) +
      assignments.hashCode +
      equipments.hashCode +
      children.hashCode;

  static List<TicketJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketJsonhalReadLinks>[];
    }

    return json.fold(<TicketJsonhalReadLinks>[],
        (List<TicketJsonhalReadLinks> previousValue, element) {
      final TicketJsonhalReadLinks? object =
          TicketJsonhalReadLinks.fromJson(element);
      if (object is TicketJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, TicketJsonhalReadLinks>{},
        (Map<String, TicketJsonhalReadLinks> previousValue, element) {
      final TicketJsonhalReadLinks? object =
          TicketJsonhalReadLinks.fromJson(element.value);
      if (object is TicketJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<TicketJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsonhalReadLinks>>(
          key, TicketJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketJsonhalReadLinks[self=$self, organization=$organization, parent=$parent, assignments=$assignments, equipments=$equipments, children=$children]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'self': self.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^self\.'))) {
          previousValue.add(element.split(RegExp(r'^self\.')).last);
        }

        return previousValue;
      })),
      r'organization': organization.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^organization\.'))) {
          previousValue.add(element.split(RegExp(r'^organization\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.any((key) => RegExp(r'^parent\.').hasMatch(key)))
        r'parent': parent?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^parent\.'))) {
            previousValue.add(element.split(RegExp(r'^parent\.')).last);
          }

          return previousValue;
        })),
      r'assignments': assignments,
      r'equipments': equipments,
      r'children': children,
    };
  }
}
