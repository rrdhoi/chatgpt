import 'package:flutter_bloc/flutter_bloc.dart';

part 'get_question_answer_event.dart';
part 'get_question_answer_state.dart';

class GetQuestionAnswerBloc
    extends Bloc<GetQuestionAnswerEvent, GetQuestionAnswerState> {
  GetQuestionAnswerBloc() : super(GetQuestionAnswerInitial()) {
    on<GetQuestionAnswerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
