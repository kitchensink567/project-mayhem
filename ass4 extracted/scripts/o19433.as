package
{
   import flash.utils.Dictionary;
   
   public class o19433
   {
       
      
      private var o12981:Dictionary;
      
      private const o5633:o16123 = new o16123(100);
      
      private var o6923:Vector.<o16123>;
      
      private var o7418:Vector.<o16123>;
      
      public function o19433(param1:o2693)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         super();
         o12981 = new Dictionary();
         o14439(param1,"assault");
         o14439(param1,"medic");
         o14439(param1,"heavy");
         var _loc4_:int = 0;
         o6923 = new Vector.<o16123>();
         o7418 = new Vector.<o16123>();
         _loc3_ = 0;
         while(_loc3_ < o5633.value)
         {
            _loc2_ = param1.o3554("xpLevel.lv" + (_loc3_ + 1).toString());
            _loc4_ = _loc4_ + _loc2_;
            o6923.push(new o16123(_loc2_));
            o7418.push(new o16123(_loc4_));
            _loc3_++;
         }
      }
      
      public function o19598() : int
      {
         return o5633.value;
      }
      
      private function o14439(param1:o2693, param2:String) : o1832
      {
         var _loc3_:int = 0;
         var _loc4_:o1832 = new o1832();
         var _loc5_:String = "class." + param2 + ".";
         _loc4_.id = param1.o3554(_loc5_ + "id");
         _loc4_.name = param1.o9009(_loc5_ + "className");
         _loc4_.o7962 = param1.o9009(_loc5_ + "classDescription");
         _loc4_.o1491 = new Vector.<String>();
         _loc4_.o13167 = param1.o3554(_loc5_ + "startingHealth");
         _loc4_.o7191 = param1.o17521(_loc5_ + "mass");
         _loc4_.o10483 = param1.o17521(_loc5_ + "speedBase");
         _loc4_.o19592 = param1.o17521(_loc5_ + "sprintSpeedMod");
         _loc4_.o14377 = param1.o17521(_loc5_ + "maxStamina");
         _loc4_.o1508 = param1.o17521(_loc5_ + "staminaDepletionRate");
         _loc4_.o1430 = param1.o17521(_loc5_ + "staminaRegen");
         if(_loc4_.o7191 == 0 || _loc4_.o10483 == 0 || _loc4_.o19592 == 0 || _loc4_.o14377 == 0 || _loc4_.o1508 == 0 || _loc4_.o1430 == 0)
         {
            throw new Error("Invalid character class data");
         }
         _loc3_ = 0;
         while(_loc3_ < 100)
         {
            _loc4_.o1491.push(param1.o9009(_loc5_ + "level." + (_loc3_ + 1).toString()));
            _loc3_++;
         }
         o12981[_loc4_.id] = _loc4_;
         return _loc4_;
      }
      
      public function o16413(param1:int) : o1832
      {
         return o12981[param1] as o1832;
      }
      
      public function o4458(param1:int) : int
      {
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < o5633.value)
         {
            if(param1 < o7418[_loc2_].value)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return o5633.value;
      }
      
      public function o10554(param1:int) : int
      {
         return o7418[param1 - 1].value;
      }
      
      public function o4481(param1:int) : Number
      {
         var _loc2_:int = this.o4458(param1);
         if(_loc2_ == o5633.value)
         {
            return 1.79769313486232e308;
         }
         _loc2_--;
         var _loc3_:int = o7418[_loc2_ + 1].value;
         return _loc3_ - param1;
      }
      
      public function o7275(param1:int) : Number
      {
         var _loc3_:int = this.o4458(param1);
         if(_loc3_ == 100)
         {
            return 1;
         }
         _loc3_--;
         var _loc2_:int = o7418[_loc3_].value;
         var _loc5_:int = o7418[_loc3_ + 1].value;
         var _loc4_:Number = (param1 - _loc2_) / (_loc5_ - _loc2_);
         var _loc6_:int = _loc4_ * 1000;
         return _loc6_ / 1000;
      }
      
      public function o5711(param1:int, param2:int) : String
      {
         var _loc3_:o1832 = this.o16413(param1);
         if(_loc3_ == null)
         {
            return "Class not found";
         }
         if(param2 <= 0 || param2 > _loc3_.o1491.length)
         {
            return "Invalid level";
         }
         return _loc3_.o1491[param2 - 1];
      }
   }
}
