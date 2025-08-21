import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
final Profile profile;
final List<Skill> skills;
final List<Project> project;
final List<Experience> experience;
final Contact contact;

DataModel({
  required this.profile,
  required this.skills,
  required this.contact,
  required this.project,
  required this.experience,
});

factory DataModel.fromJson(Map<String, dynamic> json) =>
_$DataModelFromJson(json);

Map<String, dynamic> toJson() => _$DataModelToJson(this);
}

/// profile class
@JsonSerializable()
class Profile {
final String name;
final String title;
final String bio;

Profile({
required this.name,
required this.title,
required this.bio,
});

factory Profile.fromJson(Map<String, dynamic> json) =>
_$ProfileFromJson(json);

Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
/// skill class
@JsonSerializable()
class Project {
  final String title;
  final String thumbnail;
  final String description;
  final String? link;
  final String? download;
  final int year;
  List<String> technologies;

  Project({
    required this.title,
    required this.description,
    required this.technologies,
     this.link,
     this.download,
    required this.thumbnail,
    required this.year,
  });

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);
}


/// skill class
@JsonSerializable()
class Skill {
final String title;
final String icon;

Skill({
required this.title,
required this.icon,
});

factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);

Map<String, dynamic> toJson() => _$SkillToJson(this);
}
/// skill class
@JsonSerializable()
class Experience {
final String title;
final String company;
final String description;
final String start;
final String end;

Experience({
required this.title,
required this.company,
required this.description,
required this.start,
required this.end,
});

factory Experience.fromJson(Map<String, dynamic> json) => _$ExperienceFromJson(json);

Map<String, dynamic> toJson() => _$ExperienceToJson(this);
}

/// contact class
@JsonSerializable()
class Contact {
final String email;
final String phone;
final String linkedin;
final String github;

Contact({
required this.email,
required this.phone,
required this.linkedin,
required this.github,
});

factory Contact.fromJson(Map<String, dynamic> json) =>
_$ContactFromJson(json);

Map<String, dynamic> toJson() => _$ContactToJson(this);
}