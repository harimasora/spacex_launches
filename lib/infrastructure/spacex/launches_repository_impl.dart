import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:spacex_launches/domain/core/value_objects.dart';
import 'package:spacex_launches/domain/spacex/i_launches_repository.dart';
import 'package:spacex_launches/domain/spacex/spacex_failures.dart';
import 'package:spacex_launches/domain/spacex/launch.dart';
import 'package:spacex_launches/infrastructure/spacex/launch_dtos.dart';

@LazySingleton(as: ILaunchesRepository)
class LaunchesRepositoryImpl implements ILaunchesRepository {
  final GraphQLClient _client;

  LaunchesRepositoryImpl(this._client);

  @override
  Future<Either<SpaceXFailure, List<Launch>>> getLaunches() async {
    const listQueryString = '''
query launches {
  launches {
    details
    id
    launch_date_utc
    mission_name
    upcoming
    links {
      mission_patch_small
      flickr_images
    }
    launch_site {
      site_name
    }
  }
}
''';

    final response = await _client.query(QueryOptions(document: gql(listQueryString)));

    if (response.data != null) {
      final launchesList = (response.data!['launches'] as List)
          .map((dynamic launchJson) => LaunchDTO.fromGraphQL(launchJson as Map<String, dynamic>).toDomain())
          .toList();
      return Either.right(launchesList);
    } else {
      return const Either.right([]);
    }
  }
}
