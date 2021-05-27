import 'package:iupp_core/core.dart';

import '../../data/models/banner_model.dart';

class BannerEntity extends Entity {
  BannerEntity({
    required this.bannerId,
    required this.bannerUrl,
  });

  final int bannerId;
  final String bannerUrl;

  @override
  List<Object?> get props => [bannerId, bannerUrl];

  @override
  Model get toModel => BannerModel(id: bannerId, bannerUrl: bannerUrl);
}
