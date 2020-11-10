package
{
   import flash.utils.Dictionary;
   
   public class o17693 extends o8023
   {
       
      
      public var o9168:Array = null;
      
      private var o11808:Dictionary = null;
      
      private var o20753:Vector.<Class> = null;
      
      public var o750:int = 0;
      
      public function o17693(param1:Vector.<Class>)
      {
         super();
         this.o20753 = param1;
         o9168 = Mem.create(this,Array);
         o11808 = Mem.create(this,Dictionary);
      }
      
      public function create(param1:Class, ... rest) : *
      {
         var _loc3_:* = Mem.create(this,param1);
         if(_loc3_ is o6212)
         {
            (_loc3_ as o6212).o10887 = o750;
         }
         _loc3_.o16955.apply(null,rest);
         o19141(_loc3_);
         return _loc3_;
      }
      
      public function o19023(param1:*) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = o11808;
         for(var _loc2_ in o11808)
         {
            if(param1 is _loc2_)
            {
               o11808[_loc2_].splice(o11808[_loc2_].indexOf(param1),1);
            }
         }
         o9168.splice(o9168.indexOf(param1),1);
      }
      
      public function o20698(param1:Class) : Array
      {
         var _loc2_:* = null;
         if(o11808[param1] == null)
         {
            _loc2_ = Mem.create(this,Array);
            var _loc6_:int = 0;
            var _loc5_:* = o9168;
            for each(var _loc3_ in o9168)
            {
               if(_loc3_ is param1)
               {
                  _loc2_.push(_loc3_);
               }
            }
            o11808[param1] = _loc2_;
         }
         var _loc4_:Array = o11808[param1];
         return o11808[param1];
      }
      
      private function o19141(param1:*) : void
      {
         o9168.push(param1);
         var _loc4_:int = 0;
         var _loc3_:* = o11808;
         for(var _loc2_ in o11808)
         {
            if(param1 is _loc2_)
            {
               o11808[_loc2_].push(param1);
            }
         }
      }
   }
}
