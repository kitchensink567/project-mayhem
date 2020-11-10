package
{
   import flash.utils.Dictionary;
   
   public class o11838 extends o8023
   {
       
      
      private var o2535:o20139 = null;
      
      private var o58:Dictionary = null;
      
      public function o11838(param1:o20139)
      {
         super();
         o58 = Mem.create(this,Dictionary) as Dictionary;
         this.o2535 = param1;
         param1.addEventListener(o18787.TYPE,o20841);
         param1.addEventListener(o11273.TYPE,o14159);
      }
      
      private function o20841(param1:o18787) : void
      {
         var _loc3_:o4039 = o58[param1.o9712];
         var _loc2_:o4039 = o58[param1.o13724];
         if(_loc3_ != null)
         {
            _loc3_.dispatchData(Mem.create(this,o4217,[_loc3_,_loc2_,param1.o16210]));
         }
         if(_loc2_ != null)
         {
            _loc2_.dispatchData(Mem.create(this,o4217,[_loc2_,_loc3_,param1.o16210]));
         }
      }
      
      private function o14159(param1:o11273) : void
      {
         var _loc3_:o4039 = o58[param1.o9712];
         var _loc2_:o4039 = o58[param1.o13724];
         if(_loc3_ != null)
         {
            _loc3_.dispatchData(Mem.create(this,o20312,[_loc3_,_loc2_]));
         }
         if(_loc2_ != null)
         {
            _loc2_.dispatchData(Mem.create(this,o20312,[_loc2_,_loc3_]));
         }
      }
      
      public function o15803(param1:uint = 1, param2:uint = 4294967295, param3:uint = 4294967295, param4:Boolean = false, param5:Number = 0, param6:Number = 0) : o4039
      {
         var _loc7_:o4039 = Mem.create(this,o4039,[o2535,param1,param2,param3,param4,param5,param6]);
         o58[_loc7_.id] = _loc7_;
         return _loc7_;
      }
      
      public function o4309(param1:o20139, param2:uint = 1, param3:uint = 4294967295, param4:uint = 4294967295, param5:Boolean = false, param6:Number = 0, param7:Number = 0) : o4039
      {
         var _loc8_:o4039 = Mem.create(this,o4039,[param1,param2,param3,param4,param5,param6,param7]);
         return _loc8_;
      }
      
      public function o3546(param1:int) : o4039
      {
         return o58[param1];
      }
      
      public function clear() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o58;
         for each(var _loc1_ in o58)
         {
            _loc1_.o19115();
         }
         this.o58 = new Dictionary();
      }
   }
}
