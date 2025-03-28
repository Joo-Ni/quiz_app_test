class Quiz {
  String? title;
  List<String>? candidates;
  int? answer;

  Quiz({required this.title, required this.candidates, required this.answer});

  Quiz.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        candidates = (map['candidate'] as List?)
            ?.map((item) => item.toString())
            .toList(),
        answer = map['answer'];

  Quiz.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        candidates = json['body'].toString().split('/'),
        answer = json['answer'];
}
