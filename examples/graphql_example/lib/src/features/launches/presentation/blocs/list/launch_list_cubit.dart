import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_entity.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

part 'launch_list_cubit.freezed.dart';
part 'launch_list_state.dart';

@injectable
class LaunchListCubit extends Cubit<LaunchListState> {
  LaunchListCubit(this._repository) : super(const LaunchListState.initial());
  final LaunchRepository _repository;

  @postConstruct
  Future<void> getLaunches() async {
    emit(const LaunchListState.loading());
    final response = await _repository.getLaunches();
    emit(
      response.fold(
        (error) => LaunchListState.error(message: error.message),
        (launches) => LaunchListState.success(launches: launches),
      ),
    );
  }
}
