import 'package:flutter/material.dart';
import 'package:task28/screen/food_view_model.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatefulWidget {
  FoodScreen({Key? key}) : super(key: key);

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var modelView = Provider.of<FoodViewModel>(context, listen: false);
      await modelView.getAllFood();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
        centerTitle: true,
      ),
      body: body(modelView),
    );
  }

  Widget listView(FoodViewModel modelView) {
    return ListView.builder(
      itemCount: modelView.foods.length,
      itemBuilder: (context, index) {
        final foods = modelView.foods[index];
        return ListTile(
          title: Text('${foods.id}'),
          subtitle: Text(foods.name),
        );
      },
    );
  }

  Widget body(FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text('Gagal mengambil data'),
      );
    }

    return listView(viewModel);
  }
}