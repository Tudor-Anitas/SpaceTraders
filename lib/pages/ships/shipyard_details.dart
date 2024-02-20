import 'package:flutter/material.dart';

class ShipyardDetails extends StatefulWidget {
  final Future future;
  const ShipyardDetails({super.key, required this.future});

  @override
  State<ShipyardDetails> createState() => _ShipyardDetailsState();
}

class _ShipyardDetailsState extends State<ShipyardDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          
        }
        return const SizedBox();
      },
    );
  }
}
