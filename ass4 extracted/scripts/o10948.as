package
{
   import flash.display.Sprite;
   
   public class o10948 extends Sprite
   {
       
      
      public function o10948()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o13722;
      }
   }
}

import flash.utils.ByteArray;

class o13722 extends o15755
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics"],[2,o17243.o19845,o13351.o5585,"name"],[3,o17243.o14773,o13351.o5585,"add zone later"]];
    
   
   private var body:o10262;
   
   private var o12288:int;
   
   function o13722()
   {
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o12288 = param2.readShort();
      name = param2.readUTF();
      var _loc3_:Boolean = false;
      if(param2.bytesAvailable > 0)
      {
         _loc3_ = param2.readBoolean();
      }
      if(_loc3_ == false)
      {
         o967();
      }
      super.o16955(param1);
   }
   
   public function o967() : void
   {
      var _loc4_:* = null;
      var _loc1_:* = null;
      body = o4519.o8116.o9869.o1968(0,0,false);
      var _loc2_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[o12288].o6041[0].id);
      var _loc5_:Vector.<Vector.<o18509>> = o12075.o7521(_loc2_);
      var _loc7_:int = 0;
      var _loc6_:* = _loc5_;
      for each(var _loc3_ in _loc5_)
      {
         _loc4_ = new o17761(body.o2535);
         _loc4_.o14486(_loc3_);
         _loc1_ = o4519.o8116.o20600.o15803(o8723.o12001,o8723.o9135,o8723.o9135,true);
         _loc1_.o10289 = _loc4_.id;
         body.o14230(_loc1_);
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      if(body)
      {
         body.o19115();
      }
      super.o19115();
   }
}
