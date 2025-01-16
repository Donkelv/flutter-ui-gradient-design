class OptionsModel {
  final String letter;
  final String description;

  OptionsModel({required this.letter, required this.description});
}

List<OptionsModel> optionsList = [
  OptionsModel(
    letter: "A",
    description: "The peace in the early mornings",
  ),
  OptionsModel(
    letter: "B",
    description: "The magical golden hours",
  ),
  OptionsModel(
    letter: "C",
    description: "Wind-down time after dinners",
  ),
  OptionsModel(
    letter: "D",
    description: "The serenity past midnight",
  ),
];
