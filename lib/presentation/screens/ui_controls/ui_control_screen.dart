import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_control_scroll';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI controls + tiles'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, subamrine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;

  Transportation selectedTransportation = Transportation.car;

  bool wantsBrekfast = false;
  bool wantsLuch = false;
  bool wantsDiner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de Transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('viajar por Car'),
              value: Transportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('viajar por Boat'),
              value: Transportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('viajar por Plane'),
              value: Transportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('viajar por  Submarine'),
              value: Transportation.subamrine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.subamrine;
              }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBrekfast, 
          onChanged: (value) => setState(() {
            wantsBrekfast = !wantsBrekfast;
          })
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsLuch, 
          onChanged: (value) => setState(() {
            wantsLuch = !wantsLuch;
          })
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsDiner, 
          onChanged: (value) => setState(() {
            wantsDiner = !wantsDiner;
          })
        ),
      ],
    );
  }
}
