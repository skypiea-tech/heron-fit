import '/flutter_flow/flutter_flow_util.dart';
import 'compare_progress_photos_widget.dart' show CompareProgressPhotosWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CompareProgressPhotosModel
    extends FlutterFlowModel<CompareProgressPhotosWidget> {
  ///  Local state fields for this page.

  String? activethissiamgbruh;

  String? weight;

  String? date;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
