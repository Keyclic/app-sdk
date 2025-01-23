//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class CollaboratorJsonhalReadLinks {
  /// Returns a new [CollaboratorJsonhalReadLinks] instance.
  CollaboratorJsonhalReadLinks({
    this.self,
    this.roles,
  });

  /// Returns a new [CollaboratorJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CollaboratorJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return CollaboratorJsonhalReadLinks(
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

    return other is CollaboratorJsonhalReadLinks &&
        other.self == self &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) + (roles == null ? 0 : roles.hashCode);

  static List<CollaboratorJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <CollaboratorJsonhalReadLinks>[];
    }

    return json.fold(<CollaboratorJsonhalReadLinks>[],
        (List<CollaboratorJsonhalReadLinks> previousValue, element) {
      final CollaboratorJsonhalReadLinks? object =
          CollaboratorJsonhalReadLinks.fromJson(element);
      if (object is CollaboratorJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CollaboratorJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CollaboratorJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, CollaboratorJsonhalReadLinks>{},
        (Map<String, CollaboratorJsonhalReadLinks> previousValue, element) {
      final CollaboratorJsonhalReadLinks? object =
          CollaboratorJsonhalReadLinks.fromJson(element.value);
      if (object is CollaboratorJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CollaboratorJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<CollaboratorJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CollaboratorJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CollaboratorJsonhalReadLinks>>(
          key, CollaboratorJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'CollaboratorJsonhalReadLinks[self=$self, roles=$roles]';

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
