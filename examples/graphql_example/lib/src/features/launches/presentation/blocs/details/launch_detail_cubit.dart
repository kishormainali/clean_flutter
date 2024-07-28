import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_example/src/features/launches/domain/entities/launch_entity.dart';
import 'package:graphql_example/src/features/launches/domain/repository/launch_repository.dart';
import 'package:injectable/injectable.dart';

part 'launch_detail_cubit.freezed.dart';
part 'launch_detail_state.dart';

@injectable
class LaunchDetailCubit extends Cubit<LaunchDetailState> {
  LaunchDetailCubit(this._repository)
      : super(const LaunchDetailState.initial());
  final LaunchRepository _repository;

  Future<void> getLaunchDetails(String id) async {
    emit(const LaunchDetailState.loading());
    final response = await _repository.getLaunchDetails(id);
    emit(
      response.fold(
        (error) => LaunchDetailState.error(error.message),
        LaunchDetailState.success,
      ),
    );
  }
}
