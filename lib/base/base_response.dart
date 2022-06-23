class BaseResponse<T> {
  bool status = false;
  bool isLoading = true;
  String? message;
  T? data;

  BaseResponse({required this.status, required this.isLoading, this.message, this.data});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    isLoading = json['isLoading'];
    message = json['message'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = this.status;
    data['isLoading'] = this.isLoading;
    data['message'] = this.message;
    data['data'] = this.data;
    return data;
  }
}
