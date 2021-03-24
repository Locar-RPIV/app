import 'package:app/core/enum/Vehicle/vehicle_type.dart';

class VehicleSummary {
  String imageUrl;
  String name;
  double value;
  VehicleType type;

  VehicleSummary({
    this.imageUrl,
    this.name,
    this.value,
    this.type,
  });

  static List<VehicleSummary> fromArray(List<dynamic> list) =>
      list.map((json) => VehicleSummary.fromJson(json)).toList();

  VehicleSummary.fromJson(Map<String, dynamic> map) {
    imageUrl = map['imageUrl'] ??
        "https://s3-alpha-sig.figma.com/img/1ce9/c2f8/02a1d280088ee6ec7f8b0b75592acfaa?Expires=1615766400&Signature=csurlU0T~76Wn3HeFTX96GdEh3igq0tiqTJEErPI2GXrVn8mYOiEk9nbjRW2InOHdyvSihgUVPtalQfQYYhgcj67lWGl07ypxrfGQFknxxlCQbCQ9YEN5Rywtfiv8R59XSeEIpqysdgWyH2~TRfzbzA3A3UMcwutTsRSo1WjIadKIq1NvT~QinGkOHmPjUD-0-JwYXFwoO-gJ1hN81Wf3G0hs20m8Vzfz3hPtJIGbs6C23NN77N6fsmWvQGkTR-iw~ny40-tdyJ~q5QMj-0z-uYSH0LqktVYepSXosCg1pSYaq9fI~D5OL--V3QJWZrDjNoSjvKx1XFDqnUyvhVtYg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA";
    name = map['modelo'];
    value = map['valorLocacao'];
    type = map['carroParceiro'] ? VehicleType.particular : VehicleType.rental;
  }
}
