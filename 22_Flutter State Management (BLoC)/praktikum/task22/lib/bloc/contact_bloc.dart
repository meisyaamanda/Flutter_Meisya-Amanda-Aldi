import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task22/bloc/contact_event.dart';
import 'package:task22/bloc/contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState>{
  ContactBloc() : super(const ContactState([])){
    on<TambahContact>(_tambahContact);
    on<HapusContact>(_hapusContact);
  }

  void _tambahContact(TambahContact event, Emitter<ContactState> emit){
    emit(ContactState([...state.contacts, event.contact]));
  }

  void _hapusContact(HapusContact event, Emitter<ContactState> emit){
    emit(ContactState([...state.contacts]..removeAt(event.contactIndex)));
  }
}