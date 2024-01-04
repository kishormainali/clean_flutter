part of 'launch_list_cubit.dart';

@freezed
class LaunchListState with _$LaunchListState {
  const factory LaunchListState.initial() = _Initial;
  const factory LaunchListState.loading() = _Loading;

  const factory LaunchListState.error({
    required String message,
  }) = _Error;
  const factory LaunchListState.success({
    required List<LaunchModel> launches,
  }) = _Success;
}
