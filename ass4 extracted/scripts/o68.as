package
{
   public class o68 extends o12663
   {
      
      protected static const o19177:Number = 0.3086;
      
      protected static const o4534:Number = 0.6094;
      
      protected static const o18457:Number = 0.082;
       
      
      public function o68()
      {
         super(5,5);
         o16979();
      }
      
      public function o6272(param1:Number) : void
      {
         if(!o2390)
         {
            return;
         }
         o2390[0][4] = param1;
         o2390[1][4] = param1;
         o2390[2][4] = param1;
      }
      
      public function o13126(param1:Number) : void
      {
         if(!o2390)
         {
            return;
         }
         var _loc2_:Number = 0.5 * (127 - param1);
         param1 = param1 / 127;
         o2390[0][0] = param1;
         o2390[1][1] = param1;
         o2390[2][2] = param1;
         o2390[0][4] = _loc2_;
         o2390[1][4] = _loc2_;
         o2390[2][4] = _loc2_;
      }
      
      public function o6869(param1:Number) : void
      {
         if(!o2390)
         {
            return;
         }
         var _loc2_:Number = 1 - param1;
         var _loc3_:Number = _loc2_ * 0.3086;
         o2390[0][0] = _loc3_ + param1;
         o2390[1][0] = _loc3_;
         o2390[2][0] = _loc3_;
         _loc3_ = _loc2_ * 0.6094;
         o2390[0][1] = _loc3_;
         o2390[1][1] = _loc3_ + param1;
         o2390[2][1] = _loc3_;
         _loc3_ = _loc2_ * 0.082;
         o2390[0][2] = _loc3_;
         o2390[1][2] = _loc3_;
         o2390[2][2] = _loc3_ + param1;
      }
      
      public function o10456(param1:Number) : void
      {
         var _loc6_:int = 0;
         var _loc2_:int = 0;
         if(!o2390)
         {
            return;
         }
         o16979();
         var _loc10_:o12663 = new o12663(3,3);
         var _loc3_:o12663 = new o12663(3,3);
         var _loc7_:o12663 = new o12663(3,3);
         var _loc11_:Number = Math.cos(param1);
         var _loc8_:Number = Math.sin(param1);
         var _loc5_:* = 0.213;
         var _loc4_:* = 0.715;
         var _loc9_:* = 0.072;
         _loc10_.o10063(0,0,_loc5_);
         _loc10_.o10063(1,0,_loc5_);
         _loc10_.o10063(2,0,_loc5_);
         _loc10_.o10063(0,1,_loc4_);
         _loc10_.o10063(1,1,_loc4_);
         _loc10_.o10063(2,1,_loc4_);
         _loc10_.o10063(0,2,_loc9_);
         _loc10_.o10063(1,2,_loc9_);
         _loc10_.o10063(2,2,_loc9_);
         _loc3_.o10063(0,0,1 - _loc5_);
         _loc3_.o10063(1,0,-_loc5_);
         _loc3_.o10063(2,0,-_loc5_);
         _loc3_.o10063(0,1,-_loc4_);
         _loc3_.o10063(1,1,1 - _loc4_);
         _loc3_.o10063(2,1,-_loc4_);
         _loc3_.o10063(0,2,-_loc9_);
         _loc3_.o10063(1,2,-_loc9_);
         _loc3_.o10063(2,2,1 - _loc9_);
         _loc3_.o19422(_loc11_);
         _loc7_.o10063(0,0,-_loc5_);
         _loc7_.o10063(1,0,0.143);
         _loc7_.o10063(2,0,-(1 - _loc5_));
         _loc7_.o10063(0,1,-_loc4_);
         _loc7_.o10063(1,1,0.14);
         _loc7_.o10063(2,1,_loc4_);
         _loc7_.o10063(0,2,1 - _loc9_);
         _loc7_.o10063(1,2,-0.283);
         _loc7_.o10063(2,2,_loc9_);
         _loc7_.o19422(_loc8_);
         _loc10_.o14473(_loc3_);
         _loc10_.o14473(_loc7_);
         _loc6_ = 0;
         while(_loc6_ < 3)
         {
            _loc2_ = 0;
            while(_loc2_ < 3)
            {
               o2390[_loc6_][_loc2_] = _loc10_.o1697(_loc6_,_loc2_);
               _loc2_++;
            }
            _loc6_++;
         }
      }
      
      public function o16944() : Array
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         if(!o2390)
         {
            return null;
         }
         var _loc2_:Array = [];
         var _loc4_:int = 0;
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               _loc2_[_loc4_] = o2390[_loc3_][_loc1_];
               _loc4_++;
               _loc1_++;
            }
            _loc3_++;
         }
         return _loc2_;
      }
   }
}

class o18585
{
    
   
   public var o17727:Number;
   
   public var o5555:Number;
   
   public var o13954:Number;
   
   function o18585()
   {
      super();
   }
}
