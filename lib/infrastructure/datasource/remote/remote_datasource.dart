import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide ServerException;

const HOST = 'http://localhost:8000';

const HOST_GRAPHQL = HOST + '/graphql';

class RemoteDateSource {
  GraphQLClient getGraphqlClient() {
    return GraphQLClient(
      cache: GraphQLCache(store: InMemoryStore()),
      link: HttpLink(HOST_GRAPHQL, defaultHeaders: <String, String>{
        // 'Authorization': _pref!.getAccessToken()
      }),
      defaultPolicies: DefaultPolicies(
          watchQuery: Policies(fetch: FetchPolicy.cacheAndNetwork),
          query: Policies(fetch: FetchPolicy.cacheAndNetwork),
          mutate: Policies(fetch: FetchPolicy.cacheAndNetwork)),
    );
  }

  Future<bool> isNetworkConnection() async {
    final result = await (Connectivity().checkConnectivity());
    return (result == ConnectivityResult.wifi ||
        result == ConnectivityResult.mobile);
  }
}
