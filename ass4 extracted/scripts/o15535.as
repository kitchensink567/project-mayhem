package
{
   import flash.display.Sprite;
   
   public class o15535 extends Sprite
   {
       
      
      public function o15535()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o294;
      }
   }
}

import flash.utils.ByteArray;

class o294 extends o3047
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"spawn points"]];
    
   
   private var o8687:int = 0;
   
   private var o7485:Array;
   
   private var o17862:o3047 = null;
   
   private var o19979:int = 0;
   
   function o294()
   {
      o7485 = [];
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      o8687 = param2.readShort();
      var _loc4_:o13848 = o4519.o9721.o7352[o8687];
      var _loc3_:Array = o4519.o9721.o18622(_loc4_.o6041[0].id);
      o7485 = [];
      var _loc7_:int = 0;
      var _loc6_:* = _loc3_;
      for each(var _loc5_ in _loc3_)
      {
         o7485.push(new o18509(_loc5_.x,_loc5_.y));
      }
      o949(param1);
      if(o4519.o13206.o2685.o4326 == 2)
      {
         o17862 = o4519.o13206.o19304(0,0);
      }
   }
   
   public function o13284(param1:Class, param2:Number, param3:Boolean = false) : void
   {
      var _loc4_:int = 0;
      var _loc5_:* = null;
      if(param1 != null)
      {
         _loc4_ = o20384.random() * o7485.length;
         _loc5_ = o7485[_loc4_];
         o3370(param1,param2,_loc5_,0,999,false,param3);
      }
   }
   
   public function o3480() : void
   {
      var _loc5_:Boolean = false;
      var _loc4_:* = undefined;
      var _loc2_:int = 0;
      var _loc3_:* = null;
      var _loc6_:* = null;
      if(o17862 && o4519.o13206.o2685.o4326 == 2)
      {
         _loc5_ = false;
         o19979 = 0;
         _loc4_ = o10176.o8930(100);
         _loc2_ = o20384.random() * o7485.length;
         _loc3_ = o7485[_loc2_];
         o17862.position.x = _loc3_.x;
         o17862.position.y = _loc3_.y;
         var _loc8_:int = 0;
         var _loc7_:* = _loc4_;
         for each(var _loc1_ in _loc4_)
         {
            _loc6_ = o17862.o3370(_loc1_.o18948,_loc1_.grade,_loc3_,0,999,true,_loc1_.o1673);
         }
      }
   }
   
   override public function o19115() : void
   {
      if(o17862)
      {
         o4519.o8116.o14443.o7609(o17862);
         o17862.o19115();
      }
      o17862 = null;
      super.o19115();
   }
}
