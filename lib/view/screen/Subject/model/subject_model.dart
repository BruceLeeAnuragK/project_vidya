class Subject {
  String subject;
  List<Chapter> chapters;

  Subject({
    required this.subject,
    required this.chapters,
  });

  factory Subject.formMap({required Map data}) {
    return Subject(subject: data['subject'], chapters: data['chapters']);
  }
}

class Chapter {
  int ch;
  List<Topic> topics;

  Chapter({
    required this.ch,
    required this.topics,
  });

  factory Chapter.formMap({required Map data}) {
    return Chapter(ch: data['ch'], topics: data['topics']);
  }
}

class Topic {
  int id;
  List<Exercise> exercise;

  Topic({
    required this.id,
    required this.exercise,
  });

  factory Topic.formMap({required Map data}) {
    return Topic(id: data['id'], exercise: data['exercise']);
  }
}

class Exercise {
  String question;
  String answer;
  List<Image> images;

  Exercise({
    required this.question,
    required this.answer,
    required this.images,
  });

  factory Exercise.formMap({required Map data}) {
    return Exercise(
        question: data['question'],
        answer: data['answer'],
        images: data['images']);
  }
}

class Image {
  bool question;
  String images;

  Image({
    required this.question,
    required this.images,
  });

  factory Image.formMap({required Map data}) {
    return Image(question: data['question'], images: data['images']);
  }
}
