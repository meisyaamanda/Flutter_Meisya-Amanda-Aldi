import 'package:equatable/equatable.dart';
import 'package:task22/models/data_contact.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();
}

class TambahContact extends ContactEvent {
  final DataContact contact;

  const TambahContact(this.contact);

  @override
  List<Object?> get props => [contact];
}

class HapusContact extends ContactEvent {
  final int contactIndex;

  const HapusContact(this.contactIndex);

  @override
  List<Object?> get props => [contactIndex];
}