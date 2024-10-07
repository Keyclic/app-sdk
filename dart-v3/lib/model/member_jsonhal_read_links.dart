//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class MemberJsonhalReadLinks {
  /// Returns a new [MemberJsonhalReadLinks] instance.
  MemberJsonhalReadLinks({
    this.self,
    this.roles,
  });

  /// Returns a new [MemberJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      roles:
          GetPlaceCollection200ResponseLinksSelf.listFromJson(json[r'roles']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  List<GetPlaceCollection200ResponseLinksSelf>? roles;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberJsonhalReadLinks &&
        other.self == self &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) + (roles == null ? 0 : roles.hashCode);

  static List<MemberJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberJsonhalReadLinks>[];
    }

    return json.fold(<MemberJsonhalReadLinks>[],
        (List<MemberJsonhalReadLinks> previousValue, element) {
      final MemberJsonhalReadLinks? object =
          MemberJsonhalReadLinks.fromJson(element);
      if (object is MemberJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, MemberJsonhalReadLinks>{},
        (Map<String, MemberJsonhalReadLinks> previousValue, element) {
      final MemberJsonhalReadLinks? object =
          MemberJsonhalReadLinks.fromJson(element.value);
      if (object is MemberJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<MemberJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberJsonhalReadLinks>>(
          key, MemberJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberJsonhalReadLinks[self=$self, roles=$roles]';

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
      if (keys == null || keys.contains(r'roles')) r'roles': roles,
    };
  }
}
