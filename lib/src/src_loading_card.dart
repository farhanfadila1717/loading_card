import 'package:flutter/material.dart';

class LoadingCard extends StatefulWidget {
  const LoadingCard({
    Key? key,
    required this.height,
    required this.width,
    required this.borderRadius,
    this.animationDuration = const Duration(seconds: 1),
    this.colorOne = const Color(0xFFE5E5E5),
    this.colorTwo = const Color(0xFFF0F0F0),
    this.curve = Curves.easeInOutSine,
  })  : assert(
          height != double.infinity || height != double.infinity,
          'height or width cannot contain value `double.infinity`\n',
        ),
        super(key: key);

  final double height;
  final double width;
  final double borderRadius;
  final Duration animationDuration;
  final Color colorOne;
  final Color colorTwo;
  final Curve curve;

  @override
  _LoadingCardState createState() => _LoadingCardState();
}

class _LoadingCardState extends State<LoadingCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _offset;
  late Color _backgroudColor, _loadingColor;

  bool _isBackgroundOnTop = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: widget.animationDuration)
          ..addListener(() {
            if (_animationController.isCompleted) {
              reverseColor();
              _animationController.reset();
              _animationController.forward();
            }
          });
    _offset = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: _animationController, curve: widget.curve));
    _backgroudColor = widget.colorTwo;
    _loadingColor = widget.colorOne;
    _animationController.forward();
    super.initState();
  }

  void reverseColor() {
    if (_isBackgroundOnTop) {
      _backgroudColor = widget.colorTwo;
      _loadingColor = widget.colorOne;
    } else {
      _backgroudColor = widget.colorOne;
      _loadingColor = widget.colorTwo;
    }
    setState(() {
      _isBackgroundOnTop = !_isBackgroundOnTop;
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: _backgroudColor,
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
      ),
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.translate(
            offset:
                Offset(((widget.width + widget.width * .3) * _offset.value), 0),
            child: child,
          );
        },
        child: Container(
          height: widget.height,
          width: widget.width * .8,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: _loadingColor,
          ),
        ),
      ),
    );
  }
}
