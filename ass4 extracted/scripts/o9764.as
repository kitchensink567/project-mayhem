package
{
   import flash.utils.Dictionary;
   
   public class o9764
   {
       
      
      public var o3440:Dictionary;
      
      public var o2920:Array;
      
      private var o16683:o16123;
      
      public function o9764()
      {
         o2920 = [1,2,3,4,5];
         o16683 = new o16123(2);
         super();
         o16683.value = 3;
      }
      
      public function get o12100() : int
      {
         return o16683.value;
      }
      
      public function o15996(param1:int) : Number
      {
         switch(int(param1) - 1)
         {
            case 0:
               return 1;
            case 1:
               return 2;
            case 2:
               return 3;
            case 3:
               return 2;
            case 4:
               return 3;
         }
      }
      
      public function o13965(param1:int) : Number
      {
         if(param1 == 3)
         {
            return 10 * o4519.o8116.profileData.o5292.o418.o4304;
         }
         if(param1 == 2)
         {
            return 10;
         }
         return 1;
      }
      
      public function o15463(param1:Boolean) : Number
      {
         if(param1)
         {
            return 4;
         }
         return 1;
      }
      
      public function o13727(param1:o6679, param2:Boolean) : Number
      {
         var _loc3_:int = param1.o3440.o9421;
         _loc3_ = _loc3_ * o15996(param1.o3);
         _loc3_ = _loc3_ * o13965(param1.o11570);
         _loc3_ = _loc3_ * o15463(param2);
         return _loc3_;
      }
      
      private function o13195(param1:int) : int
      {
         var _loc6_:int = 0;
         var _loc10_:int = 1;
         var _loc2_:int = 2;
         var _loc11_:int = 3;
         var _loc8_:int = 7;
         var _loc4_:int = 9;
         var _loc3_:int = 10;
         var _loc7_:int = 11;
         var _loc9_:int = 12;
         var _loc5_:int = 13;
         var _loc12_:int = 14;
         var _loc13_:* = param1;
         switch(_loc13_)
         {
            case _loc6_:
               return 2;
            case _loc10_:
               return 3;
            case _loc2_:
               return 9;
            case _loc11_:
               return 4;
            case _loc8_:
               return 6;
            case _loc4_:
               return 1;
            case _loc3_:
               return 5;
            case _loc7_:
               return 8;
            case _loc9_:
               return 100;
            case _loc5_:
               return 10;
            case _loc12_:
               return 11;
            default:
               throw new Error("UInknown ammo category");
         }
      }
      
      private function o1694(param1:String, param2:o2693) : void
      {
         var _loc3_:o14844 = new o14844();
         _loc3_.o15322 = param2.o3554(param1 + ".id");
         _loc3_.name = param2.o9009(param1 + ".name");
         _loc3_.o20235 = param2.o3554(param1 + ".qty");
         _loc3_.o9421 = param2.o3554(param1 + ".cost");
         _loc3_.o15322 = o13195(_loc3_.o15322);
         o3440[_loc3_.o15322] = _loc3_;
      }
      
      public function init(param1:o2693) : void
      {
         o3440 = new Dictionary();
         o1694("smg",param1);
         o1694("assaultRifle",param1);
         o1694("lmg",param1);
         o1694("shotgun",param1);
         o1694("missile",param1);
         o1694("pistol",param1);
         o1694("sniper",param1);
         o1694("flamethrower",param1);
         o1694("subspace",param1);
         o1694("disc",param1);
         o1694("laser",param1);
      }
   }
}
