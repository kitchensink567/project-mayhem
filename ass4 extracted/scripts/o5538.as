package
{
   import flash.display.Sprite;
   
   public class o5538 extends Sprite
   {
       
      
      public function o5538()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2905;
      }
   }
}

import flash.utils.ByteArray;

class o2905 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"message ID"],[2,o17243.o2013,o13351.o10420,"trigger ID"],[3,o17243.o8809,o13351.o10420,"combot icon ID (-1 = players avatar)"],[4,o17243.float,o13351.o5585,"wait Time"]];
    
   
   private var o3548:String;
   
   private var o19136:int;
   
   private var o10969:Number = 0;
   
   private var o406:o10262;
   
   function o2905()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:* = null;
      var _loc4_:* = null;
      o3548 = param2.readUTF();
      var _loc3_:int = param2.readShort();
      o19136 = param2.readShort();
      o10969 = param2.readFloat();
      if(o19136 == -1)
      {
         if(o4519.o32.o1217 == 0)
         {
            o19136 = 8;
         }
         else if(o4519.o32.o1217 == 1)
         {
            o19136 = 10;
         }
         else if(o4519.o32.o1217 == 2)
         {
            o19136 = 9;
         }
      }
      o406 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc3_].o6041[0].id);
      var _loc8_:Vector.<Vector.<o18509>> = o12075.o7521(_loc5_);
      var _loc10_:int = 0;
      var _loc9_:* = _loc8_;
      for each(var _loc6_ in _loc8_)
      {
         _loc7_ = new o17761(o406.o2535);
         _loc7_.o14486(_loc6_);
         _loc4_ = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o478 | o8723.o14328,o8723.o478 | o8723.o14328,true);
         _loc4_.o10289 = _loc7_.id;
         o406.o14230(_loc4_);
      }
      o406.o16280(this,o8273.o7087,o5609);
   }
   
   private function o5609(param1:o663) : void
   {
      if(o10969 > 0)
      {
         o1051.o9310(this,o10969,o16579);
      }
      else
      {
         o16579();
      }
      o406.o12657(o8273.o7087,o5609);
   }
   
   private function o16579(param1:* = null) : void
   {
      var _loc2_:String = o4519.o8116.profileData.o10206(o3548);
      o4519.o8116.o20488.o2251(o19136,_loc2_);
   }
}
