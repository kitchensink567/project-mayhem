package
{
   import flash.display.Sprite;
   
   public class o1736 extends Sprite
   {
       
      
      public function o1736()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o19651;
      }
   }
}

import flash.events.Event;

class o19651 extends o10416
{
    
   
   private var o5725:Number;
   
   private var o18640:int;
   
   private var o6487:Number;
   
   private var o15708:Number;
   
   private var o11470:Number;
   
   private var o7351:Number;
   
   private var o1480:Number;
   
   private var o17771:String;
   
   private var o18361:int;
   
   private var o1162:o17517;
   
   function o19651()
   {
      super();
   }
   
   public static function getGlobalCacheAssets() : Vector.<String>
   {
      var _loc2_:* = null;
      var _loc1_:Vector.<String> = new Vector.<String>();
      var _loc4_:int = 0;
      var _loc3_:* = o4519.o8116.profileData.o5292.o4153;
      for each(_loc2_ in o4519.o8116.profileData.o5292.o4153)
      {
         _loc1_.push(_loc2_.o9531);
         _loc1_.push(_loc2_.o17771);
      }
      var _loc6_:int = 0;
      var _loc5_:* = o4519.o8116.profileData.o5292.o4843;
      for each(_loc2_ in o4519.o8116.profileData.o5292.o4843)
      {
         _loc1_.push(_loc2_.o9531);
         _loc1_.push(_loc2_.o17771);
      }
      return _loc1_;
   }
   
   public function o16955(param1:int, param2:int, param3:o17517) : void
   {
      this.o19505 = this;
      this.o18361 = param2;
      this.o1162 = param3;
      var _loc4_:o10262 = o4519.o8116.o9869.o1968(1,5,false);
      var _loc5_:o4332 = o4519.o8116.o11954.o10869();
      o10464 = [o18442,o5640,o10384];
      o3046 = o8723.o2823 | o8723.o3732 | o8723.o19523 | o8723.o3969 | o8723.o18180;
      o7742 = 0.3;
      o4982 = false;
      var _loc6_:o12377 = o4519.o8116.profileData.o5292.o18364(param2);
      o9531 = _loc6_.o9531;
      o5725 = _loc6_.o5725;
      o3 = _loc6_.o3;
      o18640 = _loc6_.o18640;
      o6487 = _loc6_.o6487;
      o15708 = _loc6_.o15708;
      o11470 = _loc6_.o11470;
      o7351 = _loc6_.o7351 / 100;
      o1480 = _loc6_.o1480;
      o17771 = _loc6_.o17771;
      o4519.o13206.o3861(o17771);
      super.o5179(param1,_loc4_,_loc5_,param3);
      _loc5_.o16990 = o11381.o2819;
      o16166.gotoAndPlay(0);
      o13830();
      o1051.o9310(this,_loc6_.o10505,o19344);
      fixture.o16280(this,o2841.o1516,o18142);
   }
   
   public function o18142(param1:Event) : void
   {
      body.o15838(o3046 ^ (o8723.o2823 | o8723.o3732));
   }
   
   private function o19344(param1:Event = null) : void
   {
      o4519.o13206.o16821(3,0.1);
      o13669();
      var _loc3_:Number = o4519.o8116.o4550(o6487);
      if(o1162)
      {
         _loc3_ = _loc3_ * o1162.o13012.o9459;
      }
      var _loc2_:o2130 = o4519.o8116.o13427.o11961(o2130,[o17771]) as o2130;
      if(_loc2_ != null)
      {
         _loc2_.o6691.position.x = body.position.x;
         _loc2_.o6691.position.y = body.position.y;
         _loc2_.o6691.scaleX = _loc3_ / 80;
         _loc2_.o6691.scaleY = _loc3_ / 80;
      }
      o4519.o8116.o2996.o2368(o10464,body.position.x,body.position.y,_loc3_,o6365,o8723.o3969 | o8723.o18180,Math.ceil(o18640)).defer(o13172);
   }
   
   private function o13172(param1:Array) : void
   {
      var _loc7_:Number = NaN;
      var _loc2_:Boolean = false;
      var _loc6_:* = null;
      var _loc3_:* = null;
      var _loc4_:* = null;
      if(o19888 == false)
      {
         _loc7_ = o5725;
         _loc7_ = _loc7_ * (o1432 as o17517).o14099;
         _loc7_ = _loc7_ * (o1432 as o17517).o3817;
         _loc2_ = false;
         if(Math.random() < o1162.o19483 + o1162.o8138)
         {
            _loc7_ = _loc7_ * o1162.o13789;
            _loc2_ = true;
         }
      }
      var _loc9_:int = 0;
      var _loc8_:* = param1;
      for each(var _loc5_ in param1)
      {
         if(o19888 == false)
         {
            _loc6_ = o15460.o4078;
            _loc6_.x = _loc5_.body.position.x - body.position.x;
            _loc6_.y = _loc5_.body.position.y - body.position.y;
            _loc3_ = o4016.o10062().initialise(_loc7_,o3,o1162,this,_loc6_.rotation,0.1,0,0,false,_loc2_);
            o4519.o8116.o8361.o5725(o6270(_loc5_),_loc3_);
         }
         if(this.o7351 > 0 && _loc5_ is o6925)
         {
            _loc4_ = o6925(_loc5_);
            o4519.o8116.o8361.o20009(_loc4_,o2940.o19216().initialise(o5973,1,o7351,o1480));
         }
      }
      o19115();
   }
   
   private function o13830() : void
   {
      o4519.o8116.o4812.o3540.o13713.play();
   }
   
   private function o13669() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      switch(int(o18361) - 1)
      {
         case 0:
            o4519.o8116.o4812.o20325.o4335.play(0.5,0,0,false,_loc1_.o10088());
            break;
         case 1:
            o4519.o8116.o4812.o20325.o5645.play(0.5,0,0,false,_loc1_.o10088());
      }
   }
}
