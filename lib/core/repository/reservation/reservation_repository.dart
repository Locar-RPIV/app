import 'package:app/app/model/remote/base_response.dart';
import 'package:app/app/model/reservation/reservation.dart';
import 'package:app/core/remote/core_api.dart';
import 'package:app/core/remote/endpoints.dart';

abstract class IReservationRepository {
  Future<dynamic> createReservation(Reservation reservation);
}

class ReservationRepository implements IReservationRepository {
  CoreAPI coreAPI = CoreAPI();

  @override
  Future<dynamic> createReservation(Reservation reservation) async {
    try {
      BaseResponseAPI response = await coreAPI.post(
        body: reservation.toJson(),
        baseUrl: Endpoints.baseURL,
        endpoint: Endpoints.reservation,
      );
      if (response.statusCode == 200) {
        return Reservation.fromJson(response.response);
      }

      return response;
    } catch (e) {
      return BaseResponseAPI(
          response: null, statusCode: 500, statusMessage: "error");
    }
  }
}
