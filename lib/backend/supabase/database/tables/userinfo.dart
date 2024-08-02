import '../database.dart';

class UserinfoTable extends SupabaseTable<UserinfoRow> {
  @override
  String get tableName => 'userinfo';

  @override
  UserinfoRow createRow(Map<String, dynamic> data) => UserinfoRow(data);
}

class UserinfoRow extends SupabaseDataRow {
  UserinfoRow(super.data);

  @override
  SupabaseTable get table => UserinfoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get displayname => getField<String>('displayname');
  set displayname(String? value) => setField<String>('displayname', value);

  int? get age => getField<int>('age');
  set age(int? value) => setField<int>('age', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get question1 => getField<String>('question1');
  set question1(String? value) => setField<String>('question1', value);

  String? get question2 => getField<String>('question2');
  set question2(String? value) => setField<String>('question2', value);

  String? get question3 => getField<String>('question3');
  set question3(String? value) => setField<String>('question3', value);

  String? get mainPrompt => getField<String>('main_prompt');
  set mainPrompt(String? value) => setField<String>('main_prompt', value);

  String? get mile1 => getField<String>('mile1');
  set mile1(String? value) => setField<String>('mile1', value);

  String? get mile2 => getField<String>('mile2');
  set mile2(String? value) => setField<String>('mile2', value);

  String? get mile3 => getField<String>('mile3');
  set mile3(String? value) => setField<String>('mile3', value);

  String? get mile4 => getField<String>('mile4');
  set mile4(String? value) => setField<String>('mile4', value);

  String? get mile5 => getField<String>('mile5');
  set mile5(String? value) => setField<String>('mile5', value);

  String? get mile6 => getField<String>('mile6');
  set mile6(String? value) => setField<String>('mile6', value);

  String? get mile7 => getField<String>('mile7');
  set mile7(String? value) => setField<String>('mile7', value);

  String? get mile8 => getField<String>('mile8');
  set mile8(String? value) => setField<String>('mile8', value);

  String? get title1 => getField<String>('title1');
  set title1(String? value) => setField<String>('title1', value);

  String? get title2 => getField<String>('title2');
  set title2(String? value) => setField<String>('title2', value);

  String? get title3 => getField<String>('title3');
  set title3(String? value) => setField<String>('title3', value);

  String? get title4 => getField<String>('title4');
  set title4(String? value) => setField<String>('title4', value);

  String? get title5 => getField<String>('title5');
  set title5(String? value) => setField<String>('title5', value);

  String? get title6 => getField<String>('title6');
  set title6(String? value) => setField<String>('title6', value);

  String? get title7 => getField<String>('title7');
  set title7(String? value) => setField<String>('title7', value);

  String? get title8 => getField<String>('title8');
  set title8(String? value) => setField<String>('title8', value);
}
