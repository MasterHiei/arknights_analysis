import '../../../core/types/types.dart';
import '../../../domain/user/value_objects/token.dart';

class TokenMixin {
  Json generatePostData(Token token) => <String, dynamic>{
        "appId": 1,
        "channelMasterId": 1,
        "channelToken": {"token": token.getOrCrash()}
      };
}
