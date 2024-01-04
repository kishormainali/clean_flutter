import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_example/src/features/launches/data/models/launch_model.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

part 'launch_detail_cubit.freezed.dart';
part 'launch_detail_state.dart';

@injectable
class LaunchDetailCubit extends Cubit<LaunchDetailState> {
  LaunchDetailCubit(this._repository)
      : super(const LaunchDetailState.initial());
  final LaunchRepository _repository;

  void getLaunchDetails(String id) async {
    emit(const LaunchDetailState.loading());
    final response = await _repository.getLaunchDetails(id).run();
    emit(response.match(
      (error) => LaunchDetailState.error(error.message),
      (launch) => LaunchDetailState.success(launch),
    ));
  }
}
