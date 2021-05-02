import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Damaso",
      photoUrl: "https://avatars.githubusercontent.com/u/17153869?v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW5 FLUTTER",
        questionsAnswered: 1,
        questions: [
          QuestionModel(
            title: "Esta curtindo o Flutter",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Sim"),
              AnswerModel(title: "Amando"),
              AnswerModel(title: "Topp"),
            ],
          ),
          QuestionModel(
            title: "Esta curtindo o Flutter",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Sim"),
              AnswerModel(title: "Amando"),
              AnswerModel(title: "Topp"),
            ],
          ),
        ],
        image: AppImages.blocks,
        level: Level.facil,
      ),
    ];
    state = HomeState.success;
  }
}
