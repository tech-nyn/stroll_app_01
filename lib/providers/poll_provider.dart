
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stroll_app_01/constants/constants.dart';
import 'package:stroll_app_01/models/models.dart';

part 'poll_provider.g.dart';

@riverpod
class Poll extends _$Poll{
// class Poll extends Notifier{

  @override
  PollState? build() => PollState(poll: question);

  void toggleOption(int optionId) {
    if(state?.selectedOption == optionId) return;
    state = state?.copyWith(selectedOption: optionId);
  }
}



class PollState {
  final PollData? poll;
  final int? selectedOption;

  PollState({this.poll, this.selectedOption});

  PollState copyWith({
    PollData? poll,
    int? selectedOption,
  }) {
    return PollState(
      poll: poll ?? this.poll,
      selectedOption: selectedOption ?? this.selectedOption
    );
  }
}