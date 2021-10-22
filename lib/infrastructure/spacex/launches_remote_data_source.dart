import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:spacex_launches/domain/spacex/i_launches_remote_data_source.dart';
import 'package:spacex_launches/infrastructure/spacex/launch_dtos.dart';

@LazySingleton(as: ILaunchesRemoteDataSource)
class LaunchesRemoteDataSourceImpl implements ILaunchesRemoteDataSource {
  final GraphQLClient _client;

  LaunchesRemoteDataSourceImpl(this._client);

  @override
  Future<List<LaunchDTO>> getLaunches() async {
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

    try {
      final response = await _client.query(QueryOptions(document: gql(listQueryString)));

      if (response.data != null) {
        final launchesList = (response.data!['launches'] as List)
            .map((dynamic launchJson) => LaunchDTO.fromGraphQL(launchJson as Map<String, dynamic>))
            .toList();

        return launchesList..sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
      } else {
        return [];
      }
    } on Exception {
      throw const ServerException();
    }
  }
}
