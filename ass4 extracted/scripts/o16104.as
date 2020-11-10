package
{
   import flash.events.Event;
   
   public class o16104
   {
       
      
      private var o2624:Vector.<o6385#1511> = null;
      
      public function o16104()
      {
         super();
         o2624 = Mem.create(this,Vector.<o6385#1511>) as Vector.<o6385#1511>;
      }
      
      public function addEventListener(param1:int, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc9_:int = 0;
         var _loc8_:* = o2624;
         for each(var _loc6_ in o2624)
         {
            if(_loc6_.type == param1 && _loc6_.o13761 == param2)
            {
               return;
            }
         }
         var _loc7_:o6385 = Mem.create(this,o6385#1511) as o6385#1511;
         _loc7_.initialise(param1,param2);
         this.o2624.push(_loc7_);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         var _loc3_:Vector.<o6385> = o2624.concat();
         var _loc5_:int = 0;
         var _loc4_:* = _loc3_;
         for each(var _loc2_ in _loc3_)
         {
            if(_loc2_.o13761 != null && _loc2_.type === int(param1.type))
            {
               _loc2_.o13761(param1);
            }
         }
         return true;
      }
      
      public function hasEventListener(param1:int) : Boolean
      {
         return false;
      }
      
      public function removeEventListener(param1:int, param2:Function, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc5_:* = o2624;
         for each(var _loc4_ in o2624)
         {
            if(_loc4_.type == param1 && _loc4_.o13761 == param2)
            {
               _loc4_.o13761 = null;
               this.o2624.splice(o2624.indexOf(_loc4_),1);
               return;
            }
         }
      }
      
      public function o5762(param1:String) : Boolean
      {
         return false;
      }
   }
}

class o6385#1511
{
    
   
   public var type:int = 0;
   
   public var o13761:Function = null;
   
   function o6385#1511()
   {
      super();
   }
   
   public function initialise(param1:int, param2:Function) : void
   {
      this.type = param1;
      this.o13761 = param2;
   }
}
