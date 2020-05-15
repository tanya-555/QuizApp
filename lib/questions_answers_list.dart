class QuizList {
  List<Map<String, Object>> _quizList;

  List<Map<String, Object>> getQuizList() {
    _quizList = const [
      {
        'question': 'What is the capital of Cuba ?',
        'answers': [
          {'text': 'Havana', 'isCorrect': true},
          {'text': 'Nicosia', 'isCorrect': false},
          {'text': 'Prague', 'isCorrect': false},
          {'text': 'Roseau', 'isCorrect': false}
        ],
      },
      {
        'question': 'What is the capital of Denmark ?',
        'answers': [
          {'text': 'Beijing', 'isCorrect': false},
          {'text': 'San Jose', 'isCorrect': false},
          {'text': 'Ottawa', 'isCorrect': false},
          {'text': 'Copenhagen', 'isCorrect': true}
        ],
      },
      {
        'question': 'What is the capital of Bulgaria ?',
        'answers': [
          {'text': 'Dhaka', 'isCorrect': false},
          {'text': 'Sofia', 'isCorrect': true},
          {'text': 'Vienna', 'isCorrect': false},
          {'text': 'Minsk', 'isCorrect': false}
        ],
      },
      {
        'question': 'What is the capital of New Zealand ?',
        'answers': [
          {'text': 'Wellington', 'isCorrect': true},
          {'text': 'Beijing', 'isCorrect': false},
          {'text': 'Dhaka', 'isCorrect': false},
          {'text': 'Minsk', 'isCorrect': false}
        ],
      },
      {
        'question': 'What is the capital of Russia ?',
        'answers': [
          {'text': 'Lima', 'isCorrect': false},
          {'text': 'Manila', 'isCorrect': false},
          {'text': 'Moscow', 'isCorrect': true},
          {'text': 'Lisbon', 'isCorrect': false}
        ],
      },
    ];
    return _quizList;
  }
}
