//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PersonPatch {
  /// Returns a new [PersonPatch] instance.
  PersonPatch({
    this.agreement,
    this.givenName,
    this.familyName,
    this.email,
    this.jobTitle,
    this.image,
    this.optIn,
    this.preferences,
    this.telephone,
  });

  /// Returns a new [PersonPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PersonPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PersonPatch(
      agreement: json[r'agreement'] is! Map
          ? null
          : PersonPatchAgreement.fromJson(json[r'agreement']),
      givenName: json[r'givenName'],
      familyName: json[r'familyName'],
      email: json[r'email'],
      jobTitle: json[r'jobTitle'],
      image: json[r'image'],
      optIn: json[r'optIn'],
      preferences: json[r'preferences'] is! Map
          ? null
          : PersonPatchPreferences.fromJson(json[r'preferences']),
      telephone: json[r'telephone'],
    );
  }

  PersonPatchAgreement? agreement;

  String? givenName;

  String? familyName;

  String? email;

  String? jobTitle;

  String? image;

  bool? optIn;

  PersonPatchPreferences? preferences;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonPatch &&
        other.agreement == agreement &&
        other.givenName == givenName &&
        other.familyName == familyName &&
        other.email == email &&
        other.jobTitle == jobTitle &&
        other.image == image &&
        other.optIn == optIn &&
        other.preferences == preferences &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (agreement == null ? 0 : agreement.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (jobTitle == null ? 0 : jobTitle.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (optIn == null ? 0 : optIn.hashCode) +
      (preferences == null ? 0 : preferences.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<PersonPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <PersonPatch>[];
    }

    return json.fold(<PersonPatch>[],
        (List<PersonPatch> previousValue, element) {
      final PersonPatch? object = PersonPatch.fromJson(element);
      if (object is PersonPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PersonPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PersonPatch>{};
    }

    return json.entries.fold(<String, PersonPatch>{},
        (Map<String, PersonPatch> previousValue, element) {
      final PersonPatch? object = PersonPatch.fromJson(element.value);
      if (object is PersonPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PersonPatch-objects as value to a dart map
  static Map<String, List<PersonPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PersonPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PersonPatch>>(
          key, PersonPatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PersonPatch[agreement=$agreement, givenName=$givenName, familyName=$familyName, email=$email, jobTitle=$jobTitle, image=$image, optIn=$optIn, preferences=$preferences, telephone=$telephone]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && agreement != null) ||
          (keys?.contains(r'agreement') ?? false))
        r'agreement': agreement?.toJson(),
      if ((keys == null && givenName != null) ||
          (keys?.contains(r'givenName') ?? false))
        r'givenName': givenName,
      if ((keys == null && familyName != null) ||
          (keys?.contains(r'familyName') ?? false))
        r'familyName': familyName,
      if ((keys == null && email != null) ||
          (keys?.contains(r'email') ?? false))
        r'email': email,
      if ((keys == null && jobTitle != null) ||
          (keys?.contains(r'jobTitle') ?? false))
        r'jobTitle': jobTitle,
      if ((keys == null && image != null) ||
          (keys?.contains(r'image') ?? false))
        r'image': image,
      if ((keys == null && optIn != null) ||
          (keys?.contains(r'optIn') ?? false))
        r'optIn': optIn,
      if ((keys == null && preferences != null) ||
          (keys?.contains(r'preferences') ?? false))
        r'preferences': preferences?.toJson(),
      if ((keys == null && telephone != null) ||
          (keys?.contains(r'telephone') ?? false))
        r'telephone': telephone,
    };
  }
}
