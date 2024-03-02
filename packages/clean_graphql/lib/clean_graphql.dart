/// Wrapper for ferry package
library clean_graphql;

export 'package:ferry/ferry.dart' hide ServerException;
export 'package:gql/ast.dart' show OperationType;

export 'src/client_options.dart';
export 'src/context_entries.dart';
export 'src/graph_source.dart';
export 'src/graphql_client.dart';
export 'src/serializers.dart';
