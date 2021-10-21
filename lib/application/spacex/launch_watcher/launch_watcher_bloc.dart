import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spacex_launches/domain/spacex/i_launches_repository.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/domain/spacex/spacex_failures.dart';
import 'package:spacex_launches/locator.dart';

part 'launch_watcher_event.dart';
part 'launch_watcher_state.dart';
part 'launch_watcher_bloc.freezed.dart';

class LaunchWatcherBloc extends Bloc<LaunchWatcherEvent, LaunchWatcherState> {
  final _repository = locator<ILaunchesRepository>();

  LaunchWatcherBloc() : super(const LaunchWatcherState.initial());

  @override
  Stream<LaunchWatcherState> mapEventToState(
    LaunchWatcherEvent event,
  ) async* {
    yield* event.map(
      getLaunchesRequested: (ev) async* {
        yield const LaunchWatcherState.loadInProgress();
        final failureOrLaunches = await _repository.getLaunches();
        yield failureOrLaunches.when(
          left: (l) => LaunchWatcherState.loadFailure(l),
          right: (r) => LaunchWatcherState.loadSuccess(r),
        );
      },
    );
  }
}
