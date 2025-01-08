

class Poll{
  final int id;
  final List<PollOption> options;
  final String question;


  Poll({
    required this.id,
    required this.question,
    required this.options,
  });
}




class PollOption{
  final int id;
  final String entry;
  final String label;

  PollOption({
    required this.id,
    required this.entry,
    required this.label
  });
}