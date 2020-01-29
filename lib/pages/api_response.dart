class ApiResponse<T> {
  bool success;
  String message;
  T result;

  ApiResponse.success(this.result) {
    success = true;
  }

  ApiResponse.error(this.message) {
    success = false;
  }
}