import 'question.dart';

class QuizBrain {
  var _questionNo = 0;

  List<Question> _questionBank = [ //question is now private
    Question(q: '1 is an odd number', a: true),
    Question(q: '2 is an odd number', a: false),
    Question(q: '3 is an odd number', a: true),
    Question(q: '4 is an odd number', a: false),
    Question(q: '5 is an odd number', a: true),
    Question(q: '6 is an odd number', a: false),
    Question(q: '7 is an odd number', a: true),
    Question(q: '8 is an odd number', a: false),
    Question(q: '9 is an odd number', a: true),
    Question(q: '10 is an odd number', a: false),
    Question(q: '11 is an odd number', a: true),
    Question(q: '12 is an odd number', a: false),
    Question(q: '13 is an odd number', a: true),
  ];

  void nextQuestion() {
    if (_questionNo < _questionBank.length - 1){
    _questionNo++;
    }
    print(_questionNo);
    print(_questionBank.length);
  }

  String getQuestionText(){
    return _questionBank[_questionNo].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNo].questionAnswer;
  }
}