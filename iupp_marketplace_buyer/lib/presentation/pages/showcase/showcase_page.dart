import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/datasources/showcase_datasource.dart';
import '../../../data/repositories/repositories.dart';

import 'cubit/showcase_cubit.dart';
import 'showcase_widget.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShowcaseCubit>(
      create: (_) => ShowcaseCubit(
        repository: ShowcaseRepository(
          ShowcaseDatasource(),
        ),
      )..getShowcase(),
      child: const ShowcaseWidget(),
    );
  }
}
