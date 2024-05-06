//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalReadLinks {
  /// Returns a new [TicketJsonhalReadLinks] instance.
  TicketJsonhalReadLinks({
    this.self,
    this.offer,
    this.organization,
    this.parent,
  });

  /// Returns a new [TicketJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'self']),
      offer: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'offer']),
      organization: GetPlaceCollection200ResponseLinksFirst.fromJson(
          json[r'organization']),
      parent: GetPlaceCollection200ResponseLinksFirst.fromJson(json[r'parent']),
    );
  }

  GetPlaceCollection200ResponseLinksFirst? self;

  GetPlaceCollection200ResponseLinksFirst? offer;

  GetPlaceCollection200ResponseLinksFirst? organization;

  GetPlaceCollection200ResponseLinksFirst? parent;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalReadLinks &&
        other.self == self &&
        other.offer == offer &&
        other.organization == organization &&
        other.parent == parent;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (offer == null ? 0 : offer.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (parent == null ? 0 : parent.hashCode);

  static List<TicketJsonhalReadLinks> listFromJson(List<dynamic>? json) {
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
      'TicketJsonhalReadLinks[self=$self, offer=$offer, organization=$organization, parent=$parent]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^offer\.').hasMatch(key)))
        r'offer': offer?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^offer\.'))) {
            previousValue.add(element.split(RegExp(r'^offer\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
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
    };
  }
}
