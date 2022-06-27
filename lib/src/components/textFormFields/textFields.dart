import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  String hintText = '';

  CampoTexto({
    required this.controller,
    required this.hintText,
  });

  @override
  State<StatefulWidget> createState() {
    return _CampoTextoState();
  }
}

class _CampoTextoState extends State<CampoTexto> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(28, 60, 28, 28),
      child: TextFormField(
        controller: widget.controller,
        onChanged: (_) => EasyDebounce.debounce(
          widget.controller.toString(),
          const Duration(milliseconds: 2000),
          () => setState(() {}),
        ),
        autofocus: true,
        decoration: InputDecoration(
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFF6AD19B),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFF6AD19B),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: const Color(0x0004eea0),
        ),
      ),
    );
  }
}
