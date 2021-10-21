import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class GraphQLInjectableModule {
  @lazySingleton
  GraphQLClient get client => GraphQLClient(
        link: HttpLink('https://api.spacex.land/graphql'),
        cache: GraphQLCache(),
      );
}
