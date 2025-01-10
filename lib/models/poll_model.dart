

class PollData{
  final int? id;
  final List<PollOption>? options;
  final String? question;
  final String? opinion;


  PollData({
    this.id,
    this.question,
    this.options,
    this.opinion,
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