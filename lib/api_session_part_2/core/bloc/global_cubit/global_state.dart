
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class GlobalStates extends Equatable {}

class GlobalInitial extends GlobalStates {
  @override
  List<Object?> get props => [];
}

class GlobalInitialState extends GlobalStates {
  

@override
List<Object?> get props => [];
}

class ChangeAppThemeState extends GlobalStates {
  
  final bool theme;
  ChangeAppThemeState({required this.theme});

@override
List<Object?> get props => [theme];
}

class GetAppThemeState extends GlobalStates {
  

@override
List<Object?> get props => [];
}
class ChangeAppLanguageSuccessState extends GlobalStates {
  

@override
List<Object?> get props => [];
}

class ChangeAppLanguageErrorState extends GlobalStates {
  

@override
List<Object?> get props => [];
}


class Initial extends GlobalStates {
  @override
List<Object?> get props => [];
}
class ChangeLocalState extends GlobalStates {
  final bool? theme;
  final Locale? locale;
  ChangeLocalState( { this.locale, this.theme,});

@override
List<Object?> get props => [theme, locale];
}
