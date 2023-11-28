import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';
  
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){},),
        )
    );
  }

  void openDialog(BuildContext context){

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder:  (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Aliquip voluptate pariatur adipisicing aute ut do laboris officia id commodo cillum non officia culpa. Ex labore pariatur tempor veniam est ut ex consequat enim officia sint officia enim. Irure nisi qui enim culpa cupidatat. Deserunt excepteur aliqua anim deserunt enim velit. Eu non laboris voluptate cillum ipsum elit aliqua incididunt sit dolore ut irure. Magna Lorem sint sit sint dolor proident cupidatat duis qui Lorem nisi laboris aliquip.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
        ],
      ),
      );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Irure pariatur proident enim pariatur culpa Lorem et dolore dolore quis officia commodo. Excepteur amet fugiat voluptate exercitation amet enim. Commodo enim excepteur ullamco cupidatat et ex esse officia ut occaecat adipisicing ea sit. Ex labore enim ullamco labore anim ullamco nulla quis ad. Veniam reprehenderit aute dolor in non exercitation excepteur in Lorem in sit nulla. Mollit dolore deserunt ad incididunt occaecat eu ullamco non.')
                  ]
                  );
              }, 
              child: const Text('Licencias Usadas')
            ),

            FilledButton.tonal(
              onPressed: (){
                openDialog(context);
              }, 
              child: const Text('Mostrar Dialogo')
            ),
          ],
        ),
        ),


      floatingActionButton:  FloatingActionButton.extended(
        label: const Text('Mostrar un Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}