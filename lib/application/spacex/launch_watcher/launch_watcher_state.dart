part of 'launch_watcher_bloc.dart';

@freezed
class LaunchWatcherState with _$LaunchWatcherState {
  const factory LaunchWatcherState.initial() = _Initial;
  const factory LaunchWatcherState.loadInProgress() = _LoadInProgress;
  const factory LaunchWatcherState.loadSuccess(List<Launch> launches) = _LoadSuccess;
  const factory LaunchWatcherState.loadFailure(SpaceXFailure failure) = _LoadFailure;
}
