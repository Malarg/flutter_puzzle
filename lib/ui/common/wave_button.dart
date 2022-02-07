import 'package:flutter/material.dart';
import 'package:flutter_puzzle/assets/assets.dart';
import 'package:flutter_svg/svg.dart';

class WaveButton extends StatefulWidget {
  final bool isLoading;
  final String text;
  final Color backgroundColor;
  final double height;
  final double width;
  final VoidCallback? onTap;

  WaveButton({
    Key? key,
    required this.isLoading,
    required this.text,
    required this.backgroundColor,
    this.height = double.infinity,
    this.width = double.infinity,
    required this.onTap,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _WaveButtonState();
}

class _WaveButtonState extends State<WaveButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: widget.backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: widget.onTap,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "Montserrat", color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(Assets.bgWaveButton),
            ],
          ),
        ),
      ),
    );
  }
}
