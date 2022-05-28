class EndPoints {
  final String _baseURL =
      'https://my-json-server.typicode.com/imkhan334/demo-1';
  final String _call = '/call';
  final String _buy = '/buy';

  String getCallData() {
    return _baseURL + _call;
  }

  String getBuyData() {
    return _baseURL + _buy;
  }
}
