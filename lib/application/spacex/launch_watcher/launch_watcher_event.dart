part of 'launch_watcher_bloc.dart';

@freezed
class LaunchWatcherEvent with _$LaunchWatcherEvent {
  const factory LaunchWatcherEvent.getLaunchesRequested() = _GetLaunchesRequested;
}
