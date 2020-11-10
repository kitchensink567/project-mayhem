package
{
   import flash.display.Sprite;
   
   public class o4198 extends Sprite
   {
       
      
      public function o4198()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o6627;
      }
   }
}

import flash.utils.ByteArray;

class o6627 extends o10416
{
   
   private static const o1501:int = 1;
    
   
   private var o4362:Number;
   
   function o6627()
   {
      super();
   }
   
   public function o16955(param1:int, param2:Number, param3:o17517) : void
   {
      o5973 = param1;
      o3742 = param2;
      o19754 = param3;
      var body:o10262 = o4519.o8116.o9869.o1968(1,5,false);
      var o6691:o4332 = o4519.o8116.o11954.o10869();
      o4362 = o3742;
      o4982 = false;
      o6365 = o8723.o9135;
      o3046 = o8723.o10217 ^ o8723.o2823 ^ o8723.o9135 ^ o8723.o32 ^ o8723.o478;
      o9531 = "asset.support.Medkit";
      o30 = 10;
      super.o5179(o5973,body,o6691,o19754);
      o6691.o16990 = o11381.o19660;
      o1051.o9310(this,0.5,function():void
      {
         fixture.o8508(o3046 | o8723.o32);
      });
      o16280(this,o17197.o9663,o9663);
      o1051.o9310(this,15,o19115);
   }
   
   private function o9663(param1:o15259) : void
   {
      var _loc3_:* = null;
      var _loc4_:* = null;
      var _loc2_:* = null;
      var _loc5_:o17517 = param1.o11541 as o17517;
      if(_loc5_ != null && !_loc5_.o7694 && _loc5_.o11243 < _loc5_.o1589)
      {
         _loc3_ = new o18848();
         _loc3_.o127 = true;
         _loc3_.amount = o4362;
         o4519.o8116.o8361.o3742(_loc5_,_loc3_);
         _loc4_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.StimShot",o11381.o7800]) as o2130;
         if(_loc4_ != null)
         {
            o4519.o8116.o11954.o2429(_loc4_.o6691,_loc5_.o6691);
            _loc4_.o6691.rotation = 0;
         }
         _loc5_.o13635();
         o4519.o8116.o4812.o1162.o16132.play(1);
         if(_loc5_ == o4519.o32)
         {
            _loc2_ = new ByteArray();
            _loc2_.writeByte(1);
            dispatchData(new o2149(o19505,_loc2_));
         }
         o19115();
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      var _loc3_:int = param2.readByte();
      if(_loc3_ == 1)
      {
         o19115();
      }
   }
   
   override public function o19115() : void
   {
      super.o19115();
   }
}
