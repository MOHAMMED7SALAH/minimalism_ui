import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:minimalism_ui/colors.dart';

class TrackImage extends StatelessWidget {
  const TrackImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      padding: const EdgeInsets.all(10),
      style: const NeumorphicStyle(
        color: backgroundColor,
        depth: 32,
        intensity: 0.8,
        boxShape: NeumorphicBoxShape.circle(),
        shape: NeumorphicShape.flat,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2015/04/11/20/17/feet-718146_960_720.jpg",
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
