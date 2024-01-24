import 'package:rudra_s_application2/data/models/me/get_me_resp.dart';
import 'package:rudra_s_application2/data/models/registerDeviceAuth/post_register_device_auth_resp.dart';

import '../apiClient/api_client.dart';

/// Repository class for managing API requests.
///
/// This class provides a simplified interface for making the
/// API request using the [ApiClient] instance
class Repository {
  final _apiClient = ApiClient();

  Future<GetMeResp> fetchMe({Map<String, String> headers = const {}}) async {
    return await _apiClient.fetchMe(
      headers: headers,
    );
  }

  Future<PostRegisterDeviceAuthResp> registerDeviceAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    return await _apiClient.registerDeviceAuth(
      headers: headers,
      requestData: requestData,
    );
  }
}
