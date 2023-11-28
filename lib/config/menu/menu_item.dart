import 'package:flutter/material.dart';

class MenuItems{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
    });


}


const appMenuItems = <MenuItems>[

  
  MenuItems(
    title: 'Botones',
    subTitle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),
  
  MenuItems(
    title: 'Progress Indicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_outlined
  ),
  MenuItems(
    title: 'SnackBars y dialogos',
    subTitle: 'indicicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_outlined
  ),
  MenuItems(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),

];