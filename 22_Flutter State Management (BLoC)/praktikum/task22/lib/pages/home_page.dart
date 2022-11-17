import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task22/bloc/contact_bloc.dart';
import 'package:task22/bloc/contact_event.dart';
import 'package:task22/bloc/contact_state.dart';
import 'package:task22/bloc/theme_bloc.dart';
import 'package:task22/pages/tambah_contact.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemeBloc>().changeTheme();
            },
            icon: const Icon(Icons.dark_mode_rounded),
          ),
        ],
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        builder: (context, state) => ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (BuildContext context, int index) {
            //DataContact dataContact = listcontact[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  child: Text(
                    state.contacts[index].nama[0],
                  ),
                ),
              ),
              title: Text(state.contacts[index].nama),
              subtitle: Text(state.contacts[index].no),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: const Text('Are you sure?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context
                                .read<ContactBloc>()
                                .add(HapusContact(index));

                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Yes',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'No',
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete_forever_rounded),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TambahData(),
            ),
          );
        },
        tooltip: 'Tambah Data',
        child: const Icon(Icons.add),
      ),
    );
  }
}
