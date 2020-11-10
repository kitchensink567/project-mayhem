package
{
   import assets.ui.MiniMapArrowEdge;
   import assets.ui.VIPMarker;
   
   public class o3954 extends o7848
   {
       
      
      private var o9824:Boolean = false;
      
      private var o16643:Boolean = false;
      
      private var o12736:int = 0;
      
      private var o6297:uint = 0;
      
      private var o9227:Boolean = false;
      
      private var o8410:int;
      
      private var o14776:int = 5;
      
      private var o12097:o4039 = null;
      
      private var o7112:o4039 = null;
      
      private var o5510:int = -1;
      
      private var o11633:o18442 = null;
      
      private var o7946 = null;
      
      private var o15882:o20567;
      
      private const o1208:int = 5;
      
      private const o15388:int = 7;
      
      private const o1273:int = 10;
      
      private const o18742:int = 0;
      
      private const o14908:int = 5;
      
      private const o4829:int = 20;
      
      private const o13372:int = 100;
      
      public function o3954()
      {
         o8410 = o18742;
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.effects.VirusSamplePickup");
         _loc1_.push("assets.effects.VirusSamplePickupAura");
         _loc1_.push("assets.effects.VirusSamplePickupAuraBig");
         _loc1_.push("assets.effects.VirusSampleCandy1");
         _loc1_.push("assets.effects.VirusSampleCandy2");
         _loc1_.push("assets.effects.VirusSampleCandy3");
         _loc1_.push("assets.effects.VirusCandySamplePickupAuraBig");
         _loc1_.push("assets.effects.VirusCandySamplePickupAura");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*, param3:o2415, param4:int, param5:Boolean) : void
      {
         this.o7946 = param2;
         this.o5973 = param1;
         var _loc7_:o4332 = o4519.o8116.o11954.o10869();
         if(o4519.o8116.o476.o9392.o16643())
         {
            o16643 = true;
            o15882 = o4519.o8116.o476.o9392.o7908();
            switch(int(param4))
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
               case 7:
                  if(Math.random() > 0.5)
                  {
                     _loc7_.o16396 = o17541.o13617(o15882.o2579);
                  }
                  else
                  {
                     _loc7_.o16396 = o17541.o13617(o15882.o15541);
                  }
                  break;
               default:
               default:
                  _loc7_.o16396 = o17541.o13617(o15882.o2579);
                  break;
               case 10:
               case 11:
               case 12:
               case 13:
               case 14:
               case 15:
               case 16:
                  _loc7_.o16396 = o17541.o13617(o15882.o9566);
            }
         }
         else
         {
            _loc7_.o16396 = o17541.o13617("assets.effects.VirusSamplePickup");
         }
         _loc7_.o16990 = o11381.o1041;
         _loc7_.scaleX = 1;
         _loc7_.scaleY = 1;
         var _loc6_:o10262 = o4519.o8116.o9869.o1968(0,1,false);
         var _loc8_:o17761 = new o17761(_loc6_.o2535);
         _loc8_.o16716(24);
         _loc6_.o8940 = false;
         _loc6_.o16687(o4519.o8116.random.o10418(this.o5973) * 10 - 5);
         o6297 = o8723.o12001 | o8723.o18180 | o8723.o19523 | o8723.o3969;
         o12097 = o4519.o8116.o20600.o15803(o8723.o9135,o6297,o6297,false,0,1);
         o12097.o10289 = _loc8_.id;
         _loc6_.o14230(o12097);
         _loc8_ = new o17761(_loc6_.o2535);
         _loc8_.o16716(32);
         o7112 = o4519.o8116.o20600.o15803(o8723.o9135,o8723.o32,o8723.o32,true);
         o7112.o10289 = _loc8_.id;
         _loc6_.o14230(o7112);
         super.o10783(param1,_loc6_,_loc7_,o4519.o8116.o11676);
         _loc6_.o8940 = false;
         _loc6_.o16687(o4519.o8116.random.o10418(this.o5973) * 10 - 5);
         switch(int(param4))
         {
            case 0:
            case 1:
            case 2:
            case 3:
               o8410 = 5;
               o14776 = 5;
               if(o16643)
               {
                  _loc7_.scaleX = 0.5;
                  _loc7_.scaleY = 0.5;
               }
               else
               {
                  _loc7_.scaleX = 0.75;
                  _loc7_.scaleY = 0.75;
               }
               break;
            case 4:
            case 5:
            case 6:
            case 7:
               o8410 = 20;
               o14776 = 7;
               if(o16643)
               {
                  _loc7_.scaleX = 0.75;
                  _loc7_.scaleY = 0.75;
               }
               else
               {
                  _loc7_.scaleX = 1;
                  _loc7_.scaleY = 1;
               }
               break;
            default:
            default:
               o8410 = 0;
               o14776 = 0;
               break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
               o8410 = 100;
               o14776 = 10;
               if(o16643)
               {
                  _loc7_.scaleX = 1.1;
                  _loc7_.scaleY = 1.1;
               }
               else
               {
                  _loc7_.scaleX = 1.5;
                  _loc7_.scaleY = 1.5;
               }
         }
         o14322();
      }
      
      public function o16367(param1:o2415, param2:int, param3:Boolean) : void
      {
         if(o5836)
         {
            return;
         }
         if(o14776 < 5)
         {
            o19115();
            return;
         }
         body.o8564(param1.x,param1.y);
         o9072();
      }
      
      private function o7664() : void
      {
         o12736 = Number(o12736) + 1;
         if(o12736 >= o14776)
         {
            o19115();
         }
      }
      
      private function o9072() : void
      {
         o12097.o8508(o6297);
         o7112.o8508(o8723.o32);
         o6691.o9824 = true;
         o7112.o16280(this,o2841.o1516,o4949);
         o16166.o12265 = true;
         o16166.play();
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),this);
         }
         o5510 = o1051.o4767(this,1,o7664);
      }
      
      public function o14322() : void
      {
         if(o5836)
         {
            return;
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
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(this && o7946 && _loc2_ && o4519.o32 == _loc2_ && !_loc2_.o7694)
         {
            o7946.o9431(o8410);
            o18655(_loc2_);
            o19115();
         }
      }
      
      private function o18655(param1:o17517) : void
      {
         var _loc2_:* = null;
         if(o4519.o8116.o6458)
         {
            if(o8410 == 100)
            {
               if(o16643 && o15882.o4029)
               {
                  _loc2_ = o4519.o8116.o13427.o11961(o2130,[o15882.o4029]) as o2130;
               }
               else
               {
                  _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.VirusSamplePickupAuraBig"]) as o2130;
               }
            }
            else if(o16643 && o15882.o17131)
            {
               _loc2_ = o4519.o8116.o13427.o11961(o2130,[o15882.o17131]) as o2130;
            }
            else
            {
               _loc2_ = o4519.o8116.o13427.o11961(o2130,["assets.effects.VirusSamplePickupAura"]) as o2130;
            }
            if(_loc2_ != null)
            {
               o4519.o8116.o11954.o2429(_loc2_.o6691,param1.o6691);
            }
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
         o1051.o19115(o5510);
         o12097 = null;
         o7112 = null;
         super.o19115();
      }
   }
}
