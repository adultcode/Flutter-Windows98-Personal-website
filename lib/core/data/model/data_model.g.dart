// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
  profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
  skills: (json['skills'] as List<dynamic>)
      .map((e) => Skill.fromJson(e as Map<String, dynamic>))
      .toList(),
  contact: Contact.fromJson(json['contact'] as Map<String, dynamic>),
  project: (json['project'] as List<dynamic>)
      .map((e) => Project.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
  'profile': instance.profile,
  'skills': instance.skills,
  'project': instance.project,
  'contact': instance.contact,
};

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
  name: json['name'] as String,
  title: json['title'] as String,
  bio: json['bio'] as String,
);

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
  'name': instance.name,
  'title': instance.title,
  'bio': instance.bio,
};

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
  title: json['title'] as String,
  description: json['description'] as String,
  technologies: (json['technologies'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  year: (json['year'] as num).toInt(),
);

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'year': instance.year,
  'technologies': instance.technologies,
};

Skill _$SkillFromJson(Map<String, dynamic> json) =>
    Skill(title: json['title'] as String, icon: json['icon'] as String);

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
  'title': instance.title,
  'icon': instance.icon,
};

Contact _$ContactFromJson(Map<String, dynamic> json) => Contact(
  email: json['email'] as String,
  phone: json['phone'] as String,
  linkedin: json['linkedin'] as String,
  github: json['github'] as String,
);

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
  'email': instance.email,
  'phone': instance.phone,
  'linkedin': instance.linkedin,
  'github': instance.github,
};
