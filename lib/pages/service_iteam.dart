import 'package:flutter/material.dart';

class ServiceItem extends StatefulWidget {
  final String service;
  const ServiceItem({super.key, required this.service});

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.service),
      ),
    );
  }
}
