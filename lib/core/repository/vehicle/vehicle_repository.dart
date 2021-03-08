import 'package:app/app/model/home/vehicle_summary.dart';
import 'package:app/core/enum/Vehicle/vehicle_type.dart';

abstract class IVehicleRepository {
  Future<List<VehicleSummary>> getAvailableVehicles();
}

class VehicleRepository implements IVehicleRepository {
  @override
  Future<List<VehicleSummary>> getAvailableVehicles() async {
    await Future.delayed(Duration(seconds: 4));
    return [
      VehicleSummary(
          name: "Celta preto 1.0 V6",
          type: VehicleType.rental,
          value: 200,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/1ce9/c2f8/02a1d280088ee6ec7f8b0b75592acfaa?Expires=1615766400&Signature=csurlU0T~76Wn3HeFTX96GdEh3igq0tiqTJEErPI2GXrVn8mYOiEk9nbjRW2InOHdyvSihgUVPtalQfQYYhgcj67lWGl07ypxrfGQFknxxlCQbCQ9YEN5Rywtfiv8R59XSeEIpqysdgWyH2~TRfzbzA3A3UMcwutTsRSo1WjIadKIq1NvT~QinGkOHmPjUD-0-JwYXFwoO-gJ1hN81Wf3G0hs20m8Vzfz3hPtJIGbs6C23NN77N6fsmWvQGkTR-iw~ny40-tdyJ~q5QMj-0z-uYSH0LqktVYepSXosCg1pSYaq9fI~D5OL--V3QJWZrDjNoSjvKx1XFDqnUyvhVtYg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Uno fire 2017 1.4",
          type: VehicleType.rental,
          value: 220,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/87ac/5a43/7c87a672e47b6b7e5b92fca5d9a567d1?Expires=1615766400&Signature=A3IUGuEeJYcASjOztEeanO0KWE63wd10mbZxP19zqG-Nhawz5UvqgyLaLHeVfzsDbUpK7f88jarxT257SrxZSBPivCxUYIWMadc0vaBxObUdUwHDExLVVZi4175WaUKzvSFLQgv4Lb9GoTYd4RPZDnkhsn6cycRVPmkuqP2k~Li4iLWigyRg2~vtYQDsM9JmoWjLISfOPBJcHe8aIpFM36uOCEowrSmlfolbRNcPACTr3uiN5ZIhtHxHYsOzY06z-PAsOzv6grgX7ZbhX0fV4AyZ6DSjYqUo1enZmqbsIMMuE14N~DreBH7cPl-NGkwqFTcaiDhjKY6NXUumcQfBow__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Fusca 1997 1.0 V6",
          type: VehicleType.particular,
          value: 500,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/f098/ebbb/d4f6510b0503d83c7f4c18d88153bacd?Expires=1615766400&Signature=R1~TKNfLDZ~B2TUEZ~xE6PXwW4DLaF0QqDv7Iu5aZJ84B0a2zChXm~p8IBHVTBmXZhPrYl6Wz9n2iGCM0S6TA03jWCQU9Xa6S90i2Cl~TSMq44xvWb-CSKqNS-2ql5pJxqrACuSKHjYSY-191NIRFLve0HFoOHk-ODemwBBkyUi3skG0yfd7v4MMEejMhYAjCMpO93GKvZTXOj5aZGTgiDvqLNmL41beAgmP6S3YT66kOmy23i7p-aL3yorwC3h0D-V4AnqOdUWKLqWwQBFHxRiBCKtGyUoRTn5FvRn5FX0bs8FtK1RUrWPT-KjeuExUkNYBfpQZHqnpHjTgvcaQKw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Ônix 2019 1.4",
          type: VehicleType.particular,
          value: 120,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/401f/cb42/86b7085d065f05353c5a628c4be37ad8?Expires=1615766400&Signature=e-DMvOyXXAsP-oT2MYiz-HhFr4dWQLDVCnKcgv0kDc3hDUudN4A3HGNNlvO2uYW8Oo~nk0K0vWIlxDL-Rvq88e~xbakEOZK1IZjJ6Hlnac~loFAR9kWBQOtEWSqKOg8XatsJ-mO3xghG5GvrpAwJlbSDZ6dl9cv~Yw5MMfcrNYKW4DjWX2Q-h6qAuru3eQrxu0NVRBaACyGTbfttsKH5B5gZQBnRjE70Y3T4HQnUANUAZBVEa4KTI2TRmnOqIJMKTWASUuGu-ZKdq~TWBGi0~jfhIL3YFLLlLDj7jPSW-~hC7i-nNSclRRr-gVT~gz-z-4BMoIddF3q8Mt9sgZRFow__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
    ];
  }
}
