import '../../../domain/entities/core/api_response.dart';
import '../../models/core/api_response_model.dart';
import '../model_to_entity_mapper.dart';

class ApiResponseMapper<M extends ModelToEntityMapper> {
  ApiResponseMapper({this.mapperData});
  final M? mapperData;

  ApiResponse<E> map<E>({
    required ApiResponseModel model,
  }) =>
      ApiResponse(
        success: model.success,
        message: model.message,
        error: model.error,
        forceLogout: model.forceLogout,
        data: mapperData?.map(model: model.data),
      );
}
