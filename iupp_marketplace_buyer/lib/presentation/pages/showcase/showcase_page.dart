import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iupp_core/core.dart';
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
          ConcreteRemoteDatasource(
            client: HttpAdapter(Dio()),
            networkInfo: NetworkInfoAdapter(
              connectivity: Connectivity(),
              dataConnectionChecker: DataConnectionChecker(),
            ),
          ),
        ),
      )..getShowcase(),
      child: const ShowcaseWidget(),
    );
  }
}
