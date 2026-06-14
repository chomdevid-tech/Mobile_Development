import '../model/joke_model.dart';

final List<Joke> jokes = List.generate(
  20,
  (index) => Joke(title: "Title ${index + 1}", description: "description${index + 1}"),
);
