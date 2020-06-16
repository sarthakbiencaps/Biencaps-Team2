import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const rountName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId,this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal));
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:ListView.builder(itemBuilder: (ctx,index){

      },itemCount:,),
    );
  }
}
