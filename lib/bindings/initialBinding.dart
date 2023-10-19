
import 'package:bottels_app/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    //Get.lazyPut(() => SignUpControllerImp());
    Get.put(Crud());    //Crud crud  = Crud(); حط  controller بلا ما بكل  
  }

}