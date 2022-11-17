import 'package:equatable/equatable.dart';
import 'package:task22/models/data_contact.dart';

class ContactState extends Equatable{
  final List <DataContact> contacts;
  const ContactState(this.contacts);

  @override
  List<Object?> get props => [contacts];

}