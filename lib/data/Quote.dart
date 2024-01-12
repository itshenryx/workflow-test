import 'package:supabase/supabase.dart';

class Quote {
  final int id;
  final String quote;

  Quote({required this.id, required this.quote});

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(id: map['id'] as int, quote: map['string'] as String);
  }

  static void fetchQuotes(SupabaseClient supabase) async {
    final response = await supabase
        .from('quote')
        .select();

    print(response);

    // if (!= null) {
    //   throw Exception("Failed to fetch quotes");
    // } else {
    //   return (response.data as List)
    //       .map((item) => Quote.fromMap(item as Map<String, dynamic>))
    //       .toList();
    // }
  }
}