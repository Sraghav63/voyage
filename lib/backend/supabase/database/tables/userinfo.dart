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
}
