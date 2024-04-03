import 'package:flutter/material.dart';
import 'package:tama_app/common/widgets/custom_shape/containers/circular_container.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class TPrimaryHeadContainer extends StatelessWidget {
  const TPrimaryHeadContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),


        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// Background Custom Shapes
              Positioned(
                  top: -150, right: -250, child:  TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
              Positioned(
                  top: 100, right: -300, child:  TCircularContainer(backgroundColor: TColors.textWhite.withOpacity(0.1))),
            ],
          ),
        ),
      ),
    );
  }
}

