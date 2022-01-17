
import 'package:e_inventory/models/product_model.dart';

List<ProductModel> getOrderList(){
  List<ProductModel> listPreOrder = [];
  listPreOrder.add(
    ProductModel(
      name: 'Rainbow Cake',
      qty: '20',
      img: 'assets/rainbow_cake.PNG'
    )
  );
   listPreOrder.add(
    ProductModel(
      name: 'Avocado Cake',
      qty: '67',
      img: 'assets/avocado_cake.PNG'
    )
  );
   listPreOrder.add(
    ProductModel(
      name: 'Snowhite Cake',
      qty: '90',
      img: 'assets/snowhite_cake.PNG'
    )
  );

  return listPreOrder;
}
