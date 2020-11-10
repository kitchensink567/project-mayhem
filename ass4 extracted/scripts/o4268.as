package
{
   import assets.ui.MiniMapArrowEdge;
   import assets.ui.VIPMarker;
   
   public class o4268 extends o7848
   {
       
      
      private var o9824:Boolean = false;
      
      private var o6481:Boolean = false;
      
      private var o6297:uint = 0;
      
      private var o12097:o4039 = null;
      
      private var o7112:o4039 = null;
      
      private var o12713:o10262;
      
      private var o5510:int = -1;
      
      private var o438:int = -1;
      
      private var o18825:int = -1;
      
      private var o7946 = null;
      
      private var o1070:o17517 = null;
      
      private const o12793:Number = 200;
      
      public function o4268()
      {
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.contractcommon.weaponParts1");
         _loc1_.push("assets.contractcommon.weaponParts2");
         _loc1_.push("assets.contractcommon.weaponParts3");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*, param3:o2415) : void
      {
         this.o7946 = param2;
         this.o5973 = param1;
         var _loc4_:o4332 = o4519.o8116.o11954.o10869();
         _loc4_.o16396 = o17541.o13617("assets.contractcommon.weaponParts" + (this.o5973 % 2 + 1));
         _loc4_.o16990 = o11381.o1041;
         _loc4_.scaleX = 1;
         _loc4_.scaleY = 1;
         o12713 = o4519.o8116.o9869.o1968(1,0,false);
         var _loc5_:o17761 = new o17761(o12713.o2535);
         _loc5_.o16716(24);
         o6297 = o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969;
         o12097 = o4519.o8116.o20600.o15803(o8723.o9135,o6297,o6297,true);
         o12097.o10289 = _loc5_.id;
         o12713.o14230(o12097);
         _loc5_ = new o17761(o12713.o2535);
         _loc5_.o16716(32);
         o7112 = o4519.o8116.o20600.o15803(o8723.o9135,o8723.o32,o8723.o32,true);
         o7112.o10289 = _loc5_.id;
         o12713.o14230(o7112);
         super.o10783(param1,o12713,_loc4_,o4519.o8116.o11676);
         body.o8940 = false;
         body.o8564(param3.x,param3.y);
         body.o16687(o4519.o8116.random.o10418(this.o5973) * 10 - 5);
         o7112.o16280(this,o2841.o1516,o4949);
         o16166.o12265 = true;
         o16166.play();
         o438 = o1051.o4767(this,0.1,o13785,0,true);
         o18825 = o1051.o4767(this,1,o16804,0,true);
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),this);
         }
      }
      
      private function o13785() : void
      {
         var _loc1_:* = null;
         if(o4519.o8116.o9869.o16561(body))
         {
            if(o1070)
            {
               _loc1_ = o15460.o4078;
               _loc1_.x = o1070.body.o2697.x - body.o2697.x;
               _loc1_.y = o1070.body.o2697.y - body.o2697.y;
               _loc1_.o3215 = 200;
               body.o6141(_loc1_.x,_loc1_.y);
            }
         }
         else
         {
            body.o6141(0,0);
            body.o8564(body.position.x,body.position.y);
            o1051.o19115(o438);
            o1051.o19115(o18825);
         }
      }
      
      private function o16804() : void
      {
         var _loc3_:* = null;
         var _loc2_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:Array = o4519.o8116.o2996.o20698(o17517);
         var _loc7_:int = 0;
         var _loc6_:* = _loc1_;
         for each(var _loc4_ in _loc1_)
         {
            if(_loc4_)
            {
               _loc5_ = (_loc4_.body.position.x - this.body.position.x) * (_loc4_.body.position.x - this.body.position.x) + (_loc4_.body.position.y - this.body.position.y) * (_loc4_.body.position.y - this.body.position.y);
               if(_loc3_)
               {
                  if(_loc5_ < _loc2_)
                  {
                     _loc2_ = _loc5_;
                  }
               }
               else
               {
                  _loc3_ = _loc4_;
                  _loc2_ = _loc5_;
               }
            }
         }
         if(_loc3_)
         {
            o1070 = _loc3_;
         }
      }
      
      public function o14322(param1:Boolean = true) : void
      {
         if(o5836)
         {
            return;
         }
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o18312(this);
         }
         if(o12097)
         {
            o12097.o8508(0);
         }
         if(o12097)
         {
            o7112.o8508(0);
         }
         if(o6691)
         {
            o6691.o9824 = false;
         }
         o1051.o19115(o438);
         o1051.o19115(o18825);
         if(param1)
         {
            o6481 = true;
         }
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(this && o7946 && _loc2_ && o4519.o32 == _loc2_ && !_loc2_.o7694)
         {
            o7946.o11361(this.o5973);
            o14200.o19505.o202.o1526("Salvage",o4519.o32);
            o14322(true);
         }
      }
      
      override public function o19115() : void
      {
         if(o5836)
         {
            return;
         }
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o18312(this);
         }
         o1051.o19115(o438);
         o1051.o19115(o18825);
         o12097 = null;
         o7112 = null;
         super.o19115();
      }
   }
}
