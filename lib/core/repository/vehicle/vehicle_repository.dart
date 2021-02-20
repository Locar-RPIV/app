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
              "https://s3-alpha-sig.figma.com/img/1ce9/c2f8/02a1d280088ee6ec7f8b0b75592acfaa?Expires=1614556800&Signature=e3jkST2fucBqTa0IT3AWNGst1R4hPJlZ6YQNGCLrXH7~Dfb6hyRTtsm0DUGeD4YbfuoCUZLBgdFTt33XEnu1VHt4rc4MpGfmMbOmr5YS06FrUce0e~ktwKRS2qNiwLsnXWz8zeCMtU9HxbcssF57pDd~Gz4MWlx4vI2lUpcN0ANfSkZow9lpxe0al-WEGYxBKFj-TGxO5fPOFBaKx~0JJljQocL6PDOTT958a9bQ~2-zMOYMHK8jIZNXfGG3AI1eyD22MtafG7qGuGsqgfZqcav7Ks2mH08UvIp5ukQ6jg1FOt~S0Ucs9XnaAZ0ZDZ3xzsoV-RiM4GAUt~0CoJVZJA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Uno fire 2017 1.4",
          type: VehicleType.rental,
          value: 220,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/87ac/5a43/7c87a672e47b6b7e5b92fca5d9a567d1?Expires=1614556800&Signature=DF6RMXl9SVeZd7Wxv2yHBhfoz7CxrusxFqGmEAYGOXfCrX2UGQ80ZfwodmLskWGEgZ~dj4FZXj4pKbFo-uIGAhcQkDN04tWum4hLhUWT1ckFDhMcDIjMJl~z4jJnUJ6vtcpJ5xT4hTnAUKsgRvr78-8vRB~GJHdze1EHEHq1~EHsjoX1~IBvO1Y4R-34PySEu7S5EiVzG7TTdqRSMK-b-gQDTNXKHfEyrWeadHDZ71M5941R-v2ebCWUNcyQrbIixnaJHrIjr2m5FjzMl7gfUW1ULSQqEOQhKgJY~-U8WQ1QfA9i4Zu4Eke8nAlpEPD9X2fCTwpo5Lxl69ByjPILCw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Fusca 1997 1.0 V6",
          type: VehicleType.particular,
          value: 500,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/f098/ebbb/d4f6510b0503d83c7f4c18d88153bacd?Expires=1614556800&Signature=Yo9bMA62Ol~5jvcldO-WozAGbVioepLtiqWdfPD7QOkuMNnh2Uz4pGwgj5apyiQccmIpoVla5IvhoeaO30zAqDZy-5pIxfAOg9zRpNW4muoYU9GpMJHZiXJn9fa4E6ZT6BaWBah~xjMggOwnViSKwF38rYtYCPoUf0nMLw~IWoyGvjc8lwHyNNqq7ji2zUKHvPjJeFwXZ~XqPSNQsFQwn1FowaXdLPM-UOxrC4C2OnZalnH-F6mJF1JSRtFEcTo3iZ6VAbQIWme3ssNVlqWWs7l6uj8oRXP~B1bMQQggjSqqJRY1s9MfASjJIOTA7hAUQtVlCVHIRh0hsBxYSXR7zQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
      VehicleSummary(
          name: "Ônix 2019 1.4",
          type: VehicleType.particular,
          value: 120,
          imageUrl:
              "https://s3-alpha-sig.figma.com/img/401f/cb42/86b7085d065f05353c5a628c4be37ad8?Expires=1614556800&Signature=aBCLZfdaU1ABbZ74U3l8wveak~btg5nznlokG5ANX5cMOdBCpY~iwHgwE7q--kEnQ0RWSRmCG4jH25lnLMOmVfQHigkSZTco5Yc9n2BG-Icc8deuK3Q8o-971QCl8Guf2FAFk-sNBJGNK17pTSjUqo9BvAG8sne-8gto11RYwB0HsZ07kV4Wknr6wu7~h~Kfz9UhrCzijTZkSZbyFmGYzsHr0sq5ccpYigvO~oosLTI-NRi4G3NIMpMHD-C1ICk5~YXTvv4s3ZQo-KPjnlLeRgElOfqMH2NcFfGBbDaKKdhkaHqzOEuC-c0vjTgHhE6IpxresEuImaJPyQRySvPoow__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
    ];
  }
}
