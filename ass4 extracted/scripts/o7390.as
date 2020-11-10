package
{
   import flash.display.Sprite;
   
   public class o7390 extends Sprite
   {
       
      
      public function o7390()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o2751;
      }
   }
}

import flash.utils.ByteArray;

class o2751 extends o9347
{
   
   public static var o20272:Array = [[1,o17243.o19845,o13351.o10420,"name"],[2,o17243.o2013,o13351.o10420,"barrierL"],[5,o17243.o2013,o13351.o10420,"barrierR"],[3,o17243.o2013,o13351.o10420,"imageL"],[4,o17243.o2013,o13351.o10420,"imageR"]];
    
   
   private var o18197:o4332;
   
   private var o10717:o4332;
   
   private var o359:o7331;
   
   private var o14952:o7331;
   
   private var o15524:o10262;
   
   private const o16417:Number = 140;
   
   private const o9756:Number = 5;
   
   private const o4785:Number = 0.9333333333333333;
   
   private var o16388:Number = 0;
   
   private var o16554:int = 0;
   
   function o2751()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc9_:int = param2.readShort();
      var _loc4_:int = param2.readShort();
      var _loc7_:int = param2.readShort();
      var _loc6_:int = param2.readShort();
      o18197 = o4519.o9721.o12831(_loc7_);
      o10717 = o4519.o9721.o12831(_loc6_);
      o359 = o4519.o9721.o7833(_loc7_);
      o14952 = o4519.o9721.o7833(_loc6_);
      o359.frameRate = o359.frameRate * (5 / 1.5);
      o14952.frameRate = o14952.frameRate * (5 / 1.5);
      super.o2348(param1,_loc9_,_loc7_,o8723.o10217,o8723.o20122,0);
      o15524 = o4519.o8116.o9869.o1968(0,0,false);
      var _loc8_:o17761 = new o17761(o15524.o2535);
      var _loc5_:Vector.<o18509> = o4519.o9721.o7963(o4519.o9721.o7352[_loc4_].o6041[0].id);
      _loc8_.o14486(_loc5_);
      var _loc3_:o4039 = o4519.o8116.o20600.o15803(o8723.o19523,o8723.o10217,o8723.o20122);
      _loc3_.o10289 = _loc8_.id;
      o15524.o14230(_loc3_);
      o18197.o16990 = 13;
      o10717.o16990 = 13;
   }
   
   public function o16489() : void
   {
      o359.play();
      o14952.play();
      o16554 = o1051.o4767(this,0.0333333333333333,o7664);
   }
   
   private function o7664() : void
   {
      o16388 = o16388 + 0.0333333333333333;
      body.o8564(body.position.x,body.position.y - 0.933333333333333);
      o15524.o8564(o15524.position.x,o15524.position.y + 0.933333333333333);
      if(o16388 >= 5)
      {
         o1051.o19115(o16554);
         body.o19115();
         o15524.o19115();
         o359.o19115();
         o14952.o19115();
         o18197.o19115();
         o10717.o19115();
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o18197.o19115();
      o18197 = null;
      o10717.o19115();
      o10717 = null;
      o359.o19115();
      o359 = null;
      o14952.o19115();
      o14952 = null;
      o15524.o19115();
      o15524 = null;
      super.o19115();
   }
}
