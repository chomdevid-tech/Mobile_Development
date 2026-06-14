import '../model/joke_model.dart';

List<Joke> createJokes() {
  final List<Joke> jokes = [];

  for (int i = 0; i < 20; i++) {
    jokes.add(
      Joke(title: "Title ${i + 1}", description: "description ${i + 1}"),
    );
  }

  return jokes;
}

final List<Joke> jokes = createJokes();
