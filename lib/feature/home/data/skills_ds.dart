import 'package:hesam/core/data/model/data_model.dart';

abstract class SkillsDataSource {
  /// Fetches the list of skills.
  ///
  /// Returns a list of skill names.
  Future<List<Skill>> getSkills();

  /// Fetches the list of skill categories.
  ///
  /// Returns a list of skill category names.
  Future<List<String>> getSkillCategories();

  /// Fetches the list of skills for a specific category.
  ///
  /// [category] is the name of the skill category.
  /// Returns a list of skill names in that category.
  Future<List<String>> getSkillsByCategory(String category);
}