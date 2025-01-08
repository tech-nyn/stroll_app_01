
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'poll_provider.g.dart';

@riverpod
class Poll extends _$Poll{
// class Poll extends Notifier{

  @override
  // PollState? build() => ;
  PollState? build() => PollState(questionId: 1);

  void toggleOption(int optionId) {
    if(state?.optionId == optionId) return;
    state = state?.copyWith(
      optionId: optionId,
    );
  }
}






class PollState {
  // final List<Option> options;
  // final Option? selectedOption;
  final int? questionId;
  final int? optionId;

  PollState({
    this.questionId,
    this.optionId
  });

  PollState copyWith({
    int? questionId,
    int? optionId,
  }) {
    return PollState(
      questionId: questionId ?? questionId,
      optionId: optionId ?? optionId,
    );
  }
}