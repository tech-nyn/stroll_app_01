

import '../models/poll_model.dart';

final question = PollData(
  id: 1,
  question: "What is your favorite time of the day?",
  opinion: "Mine is definitely the peace in the morning",
  options: [
    PollOption(id: 1, entry: "A", label: "The peace in the early mornings"),
    PollOption(id: 2, entry: "B", label: "The magical golden hours"),
    PollOption(id: 3, entry: "C", label: "Wind-down time after dinner"),
    PollOption(id: 4, entry: "D", label: "The serenity past midnight"),
  ]
);