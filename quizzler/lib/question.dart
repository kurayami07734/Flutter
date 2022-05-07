class Question {
  String _ques;
  bool _ans;
  Question(this._ques, this._ans);
  bool checkAnswer(bool ans) {
    return (_ans == ans);
  }

  String question() => _ques;
}
