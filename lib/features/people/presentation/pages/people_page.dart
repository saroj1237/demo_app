import 'package:demo_app/features/people/presentation/bloc/people_bloc.dart';
import 'package:demo_app/features/people/presentation/widgets/person_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Voter List")),
      body: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          if (state.status == PeopleBlocStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.status == PeopleBlocStatus.failure) {
            return Center(child: Text(state.error ?? ''));
          } else if (state.status == PeopleBlocStatus.success) {
            return ListView.builder(
              itemCount: state.people?.length,
              itemBuilder: (context, index) =>
                  PersonCard(person: state.people![index]),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
