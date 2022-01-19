
import 'package:e_inventory/models/ingerediants_model.dart';
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
  listPreOrder.add(
    ProductModel(
      name: 'Chocolate Mini Cake',
      qty: '12',
      img: 'assets/chocolate_cake.PNG'
    )
  );

  return listPreOrder;
}

List<IngrediantsModel> getIngrediants(){
  List<IngrediantsModel> listIngrediants = [];
  listIngrediants.add(
    IngrediantsModel(
      name: 'Margarin',
      stok : '230 Pcs',
      img: 'assets/margarin.PNG'
    )
  );
  listIngrediants.add(
    IngrediantsModel(
      name: 'Gula',
      stok : '100 Karung',
      img: 'assets/gula.PNG'
    )
  );
  listIngrediants.add(
    IngrediantsModel(
      name: 'Telur',
      stok : '89 Pack',
      img: 'assets/telur.PNG'
    )
  );
   listIngrediants.add(
    IngrediantsModel(
      name: 'Tepung',
      stok : '110 Karung',
      img: 'assets/tepung.PNG'
    )
  );

  return listIngrediants;
} 
