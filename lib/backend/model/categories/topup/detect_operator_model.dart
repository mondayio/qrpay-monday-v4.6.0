import 'dart:convert';

DetectOperatorModel detectOperatorModelFromJson(String str) =>
    DetectOperatorModel.fromJson(json.decode(str));

String detectOperatorModelToJson(DetectOperatorModel data) =>
    json.encode(data.toJson());

class DetectOperatorModel {
  final Message message;
  final DetectOperatorModelData data;

  DetectOperatorModel({
    required this.message,
    required this.data,
  });

  factory DetectOperatorModel.fromJson(Map<String, dynamic> json) =>
      DetectOperatorModel(
        message: Message.fromJson(json["message"]),
        data: DetectOperatorModelData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message.toJson(),
        "data": data.toJson(),
      };
}

class DetectOperatorModelData {
  final bool status;
  final String message;
  final DataData? data;

  DetectOperatorModelData({
    required this.status,
    required this.message,
    this.data,
  });

  factory DetectOperatorModelData.fromJson(Map<String, dynamic> json) =>
      DetectOperatorModelData(
        status: json["status"],
        message: json["message"],
        data: json["data"] != null ? DataData.fromJson(json["data"]) : null,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class DataData {
  final int? id;
  final int? operatorId;
  final String? name;
  final bool? bundle;
  final bool? data;
  final bool? pin;
  final bool? comboProduct;
  final bool? supportsLocalAmounts;
  final bool? supportsGeographicalRechargePlans;
  final String? denominationType;
  final String? senderCurrencyCode;
  final String? senderCurrencySymbol;
  final String? destinationCurrencyCode;
  final String? destinationCurrencySymbol;
  final int? commission;
  final int? internationalDiscount;
  final int? localDiscount;
  final int? mostPopularAmount;
  final dynamic mostPopularLocalAmount;
  final double? minAmount;
  final double? maxAmount;
  final dynamic localMinAmount;
  final dynamic localMaxAmount;
  final Country? country;
  final Fx? fx;
  final List<String>? logoUrls;
  final List<dynamic>? fixedAmounts;
  final List<dynamic>? fixedAmountsDescriptions;
  final List<dynamic>? localFixedAmounts;
  final List<dynamic>? localFixedAmountsDescriptions;
  final List<dynamic>? suggestedAmounts;
  final List<dynamic>? suggestedAmountsMap;
  final Fees? fees;
  final List<dynamic>? geographicalRechargePlans;
  final List<dynamic>? promotions;
  final String? status;
  final double? receiverCurrencyRate;
  final String? receiverCurrencyCode;

  DataData({
    this.id,
    this.operatorId,
    this.name,
    this.bundle,
    this.data,
    this.pin,
    this.comboProduct,
    this.supportsLocalAmounts,
    this.supportsGeographicalRechargePlans,
    this.denominationType,
    this.senderCurrencyCode,
    this.senderCurrencySymbol,
    this.destinationCurrencyCode,
    this.destinationCurrencySymbol,
    this.commission,
    this.internationalDiscount,
    this.localDiscount,
    this.mostPopularAmount,
    this.mostPopularLocalAmount,
    this.minAmount,
    this.maxAmount,
    this.localMinAmount,
    this.localMaxAmount,
    this.country,
    this.fx,
    this.logoUrls,
    this.fixedAmounts,
    this.fixedAmountsDescriptions,
    this.localFixedAmounts,
    this.localFixedAmountsDescriptions,
    this.suggestedAmounts,
    this.suggestedAmountsMap,
    this.fees,
    this.geographicalRechargePlans,
    this.promotions,
    this.status,
    this.receiverCurrencyRate,
    this.receiverCurrencyCode,
  });

  factory DataData.fromJson(Map<String, dynamic> json) => DataData(
        id: json["id"],
        operatorId: json["operatorId"],
        name: json["name"],
        bundle: json["bundle"],
        data: json["data"],
        pin: json["pin"],
        comboProduct: json["comboProduct"],
        supportsLocalAmounts: json["supportsLocalAmounts"],
        supportsGeographicalRechargePlans:
            json["supportsGeographicalRechargePlans"],
        denominationType: json["denominationType"],
        senderCurrencyCode: json["senderCurrencyCode"],
        senderCurrencySymbol: json["senderCurrencySymbol"],
        destinationCurrencyCode: json["destinationCurrencyCode"],
        destinationCurrencySymbol: json["destinationCurrencySymbol"],
        commission: json["commission"],
        internationalDiscount: json["internationalDiscount"],
        localDiscount: json["localDiscount"],
        mostPopularAmount: json["mostPopularAmount"],
        mostPopularLocalAmount: json["mostPopularLocalAmount"],
        minAmount: json["minAmount"]?.toDouble(),
        maxAmount: json["maxAmount"]?.toDouble(),
        localMinAmount: json["localMinAmount"],
        localMaxAmount: json["localMaxAmount"],
        country:
            json["country"] != null ? Country.fromJson(json["country"]) : null,
        fx: json["fx"] != null ? Fx.fromJson(json["fx"]) : null,
        logoUrls: json["logoUrls"] != null
            ? List<String>.from(json["logoUrls"].map((x) => x))
            : null,
        fixedAmounts: json["fixedAmounts"] != null
            ? List<dynamic>.from(json["fixedAmounts"].map((x) => x))
            : null,
        fixedAmountsDescriptions: json["fixedAmountsDescriptions"] != null
            ? List<dynamic>.from(json["fixedAmountsDescriptions"].map((x) => x))
            : null,
        localFixedAmounts: json["localFixedAmounts"] != null
            ? List<dynamic>.from(json["localFixedAmounts"].map((x) => x))
            : null,
        localFixedAmountsDescriptions:
            json["localFixedAmountsDescriptions"] != null
                ? List<dynamic>.from(
                    json["localFixedAmountsDescriptions"].map((x) => x))
                : null,
        suggestedAmounts: json["suggestedAmounts"] != null
            ? List<dynamic>.from(json["suggestedAmounts"].map((x) => x))
            : null,
        suggestedAmountsMap: json["suggestedAmountsMap"] != null
            ? List<dynamic>.from(json["suggestedAmountsMap"].map((x) => x))
            : null,
        fees: json["fees"] != null ? Fees.fromJson(json["fees"]) : null,
        geographicalRechargePlans: json["geographicalRechargePlans"] != null
            ? List<dynamic>.from(
                json["geographicalRechargePlans"].map((x) => x))
            : null,
        promotions: json["promotions"] != null
            ? List<dynamic>.from(json["promotions"].map((x) => x))
            : null,
        status: json["status"],
        receiverCurrencyRate: json["receiver_currency_rate"]?.toDouble(),
        receiverCurrencyCode: json["receiver_currency_code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "operatorId": operatorId,
        "name": name,
        "bundle": bundle,
        "data": data,
        "pin": pin,
        "comboProduct": comboProduct,
        "supportsLocalAmounts": supportsLocalAmounts,
        "supportsGeographicalRechargePlans": supportsGeographicalRechargePlans,
        "denominationType": denominationType,
        "senderCurrencyCode": senderCurrencyCode,
        "senderCurrencySymbol": senderCurrencySymbol,
        "destinationCurrencyCode": destinationCurrencyCode,
        "destinationCurrencySymbol": destinationCurrencySymbol,
        "commission": commission,
        "internationalDiscount": internationalDiscount,
        "localDiscount": localDiscount,
        "mostPopularAmount": mostPopularAmount,
        "mostPopularLocalAmount": mostPopularLocalAmount,
        "minAmount": minAmount,
        "maxAmount": maxAmount,
        "localMinAmount": localMinAmount,
        "localMaxAmount": localMaxAmount,
        "country": country?.toJson(),
        "fx": fx?.toJson(),
        "logoUrls": logoUrls != null
            ? List<dynamic>.from(logoUrls!.map((x) => x))
            : null,
        "fixedAmounts": fixedAmounts != null
            ? List<dynamic>.from(fixedAmounts!.map((x) => x))
            : null,
        "fixedAmountsDescriptions": fixedAmountsDescriptions != null
            ? List<dynamic>.from(fixedAmountsDescriptions!.map((x) => x))
            : null,
        "localFixedAmounts": localFixedAmounts != null
            ? List<dynamic>.from(localFixedAmounts!.map((x) => x))
            : null,
        "localFixedAmountsDescriptions": localFixedAmountsDescriptions != null
            ? List<dynamic>.from(localFixedAmountsDescriptions!.map((x) => x))
            : null,
        "suggestedAmounts": suggestedAmounts != null
            ? List<dynamic>.from(suggestedAmounts!.map((x) => x))
            : null,
        "suggestedAmountsMap": suggestedAmountsMap != null
            ? List<dynamic>.from(suggestedAmountsMap!.map((x) => x))
            : null,
        "fees": fees?.toJson(),
        "geographicalRechargePlans": geographicalRechargePlans != null
            ? List<dynamic>.from(geographicalRechargePlans!.map((x) => x))
            : null,
        "promotions": promotions != null
            ? List<dynamic>.from(promotions!.map((x) => x))
            : null,
        "status": status,
        "receiver_currency_rate": receiverCurrencyRate,
        "receiver_currency_code": receiverCurrencyCode,
      };
}

class Country {
  final String isoName;
  final String name;

  Country({
    required this.isoName,
    required this.name,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        isoName: json["isoName"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "isoName": isoName,
        "name": name,
      };
}

class Fees {
  final double? international;
  final int local;
  final int localPercentage;
  final double? internationalPercentage;

  Fees({
    this.international,
    required this.local,
    required this.localPercentage,
    this.internationalPercentage,
  });

  factory Fees.fromJson(Map<String, dynamic> json) => Fees(
        international: json["international"]?.toDouble() ?? 0.0,
        local: json["local"],
        localPercentage: json["localPercentage"],
        internationalPercentage:
            json["internationalPercentage"]?.toDouble() ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "international": international,
        "local": local,
        "localPercentage": localPercentage,
        "internationalPercentage": internationalPercentage,
      };
}

class Fx {
  final int rate;
  final String currencyCode;

  Fx({
    required this.rate,
    required this.currencyCode,
  });

  factory Fx.fromJson(Map<String, dynamic> json) => Fx(
        rate: json["rate"],
        currencyCode: json["currencyCode"],
      );

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "currencyCode": currencyCode,
      };
}

class Message {
  final List<String> success;

  Message({
    required this.success,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        success: List<String>.from(json["success"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": List<dynamic>.from(success.map((x) => x)),
      };
}
