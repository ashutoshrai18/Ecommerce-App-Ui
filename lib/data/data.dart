import 'package:ecommerce_app_ui/model/products_model.dart';

List<ProductsModel> getProducts() {
  // List<productsModel> products = new List();
  List<ProductsModel> products = [];

  ProductsModel productsModel = new ProductsModel();
//
  productsModel.productName = "Abstract";
  productsModel.imageUrl =
      "https://images.pexels.com/photos/2471234/pexels-photo-2471234.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  products.add(productsModel);
  productsModel = new ProductsModel();
  //
  productsModel.productName = "Nature";
  productsModel.imageUrl =
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  products.add(productsModel);
  productsModel = new ProductsModel();

  //
  productsModel.productName = "Cars";
  productsModel.imageUrl =
      "https://images.pexels.com/photos/3311574/pexels-photo-3311574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  products.add(productsModel);
  productsModel = new ProductsModel();

  //
  productsModel.productName = "Bike";
  productsModel.imageUrl =
      "https://images.pexels.com/photos/1413412/pexels-photo-1413412.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  products.add(productsModel);
  productsModel = new ProductsModel();

  //
  productsModel.productName = "Art";
  productsModel.imageUrl =
      "https://images.pexels.com/photos/2471234/pexels-photo-2471234.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  products.add(productsModel);
  productsModel = new ProductsModel();

  return products;
}
