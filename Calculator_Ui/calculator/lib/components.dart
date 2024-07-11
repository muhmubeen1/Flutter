import 'package:flutter/material.dart';

class MYButton extends StatefulWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  MYButton({
    super.key,
    required this.title,
    this.color = Colors.grey,
    required this.onpress,
  });

  @override
  State<MYButton> createState() => _MYButtonState();
}

class _MYButtonState extends State<MYButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onpress,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
