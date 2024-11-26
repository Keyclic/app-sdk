//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceOfferJsonhalReadLinks {
  /// Returns a new [ServiceOfferJsonhalReadLinks] instance.
  ServiceOfferJsonhalReadLinks({
    this.self,
    this.service,
  });

  /// Returns a new [ServiceOfferJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceOfferJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceOfferJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      service:
          GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'service']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksSelf? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceOfferJsonhalReadLinks &&
        other.self == self &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<ServiceOfferJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <ServiceOfferJsonhalReadLinks>[];
    }

    return json.fold(<ServiceOfferJsonhalReadLinks>[],
        (List<ServiceOfferJsonhalReadLinks> previousValue, element) {
      final ServiceOfferJsonhalReadLinks? object =
          ServiceOfferJsonhalReadLinks.fromJson(element);
      if (object is ServiceOfferJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceOfferJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceOfferJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, ServiceOfferJsonhalReadLinks>{},
        (Map<String, ServiceOfferJsonhalReadLinks> previousValue, element) {
      final ServiceOfferJsonhalReadLinks? object =
          ServiceOfferJsonhalReadLinks.fromJson(element.value);
      if (object is ServiceOfferJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceOfferJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<ServiceOfferJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceOfferJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceOfferJsonhalReadLinks>>(
          key, ServiceOfferJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceOfferJsonhalReadLinks[self=$self, service=$service]';

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
