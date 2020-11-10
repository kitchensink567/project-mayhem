package
{
   import flash.events.Event;
   
   public class o4411 extends o8023
   {
      
      public static const o7553:int = 1;
      
      public static const o1668:int = 2;
      
      public static const o19650:int = 3;
       
      
      public var o1432:o7848 = null;
      
      public var o4670:o8925 = null;
      
      public var o11119:int;
      
      public var o13696:Array;
      
      public var o10464:Array;
      
      public var o3046:int;
      
      public var o2493:Number = 1.0;
      
      public var o20682:int = 0;
      
      public var o18404:int = 0;
      
      protected var o18706:Boolean = false;
      
      protected var o4992:Boolean = false;
      
      private var o19863:Number = 0;
      
      protected var o4761:Number = 0;
      
      private var o10432:Number = 0;
      
      private var o4249:Number = 0;
      
      private var o12531:int = 0;
      
      public var o681:o4332;
      
      protected var o11194:o4332;
      
      protected var o10762:o7331;
      
      public var o14372:o18509;
      
      public var o16117:o4332;
      
      protected var o10204:o3355;
      
      protected var o16485:Number = 0.25;
      
      protected var o4290:Function;
      
      public var o128:Function;
      
      protected var o1383:Function;
      
      private var o5601:int = -1;
      
      private var o9933:Number = 0;
      
      protected var o6268:o4332;
      
      protected var o4213:o7331;
      
      protected var o15913:o4332;
      
      protected var o8656:o7331;
      
      protected var o8571:int = -1;
      
      public function o4411(param1:o8925, param2:o7848, param3:o4332, param4:Number)
      {
         o11119 = o8723.o17798;
         o13696 = [o18442,o5640];
         o10464 = [o18442,o10384,o5640];
         o3046 = o8723.o18481 | o8723.o3732 | o8723.o3969 | o8723.o18180 | o8723.o19523;
         o14372 = new o18509();
         super();
         this.o4670 = param1;
         this.o1432 = param2;
         this.o16117 = param3;
         o681 = o4519.o8116.o11954.o10869();
         o681.o16990 = param4;
         o681.o16396 = o17541.o13617(o4519.o8116.o5830.o9009(param1.display));
         o681.position = new o2415();
         if(o681.o16396 != null)
         {
            o4519.o8116.o11954.o9226(o681);
            if(param3 != null)
            {
               o4519.o8116.o11954.align(o681,param3);
            }
         }
         o11194 = o4519.o8116.o11954.o10869();
         o11194.o16990 = o11381.o2131;
         o11194.o16396 = o17541.o13617(o4519.o8116.o5830.o9009(param1.o6670));
         o11194.o2158 = 7;
         o11194.o9824 = false;
         if(o11194.o16396 != null)
         {
            o4519.o8116.o11954.o9226(o11194);
            if(param3 != null)
            {
               o4519.o8116.o11954.align(o11194,param3);
            }
            o10762 = o4519.o8116.o11676.o6798(o11194.o16396.assetID);
            o10762.o11525(o11194);
            o10762.o12265 = false;
            o10762.o16280(this,o1490.o16612,o7582);
         }
         o20682 = o4670.o3603;
         o10204 = o4519.o8116.o4812.o3540.o4544(o4670.o727);
         switch(int(o4670.o6365) - 6)
         {
            case 0:
               if(o4670.id == 190)
               {
                  o4290 = o6104.o9955;
               }
               else
               {
                  o4290 = o6104.o1920;
               }
               o128 = null;
               o1383 = o15381;
               break;
            default:
               if(o4670.id == 194)
               {
                  o4290 = o6104.o1920;
               }
               else
               {
                  o4290 = o6104.o3889;
               }
               o128 = o12195.o10178;
               o1383 = o15381;
               break;
            case 2:
               o4290 = o6104.o14219;
               o128 = null;
               o1383 = o5912;
               break;
            case 3:
               o4290 = o6104.o3889;
               o128 = o12195.o10178;
               if(o4670.id == 182)
               {
                  o1383 = o5912;
               }
               else
               {
                  o1383 = o15381;
               }
               break;
            case 4:
               o4290 = o6104.o6364;
               o128 = null;
               o1383 = o15381;
               break;
            case 5:
               o1383 = o5912;
               o4290 = o6104.o15135;
               o128 = o12195.o10178;
               o16455();
               break;
            case 6:
               o4290 = o6104.o9955;
               o128 = null;
               o1383 = o15381;
         }
         if(!(int(o4670.o3464) - 2))
         {
            o4290 = o6104.o8450;
            o128 = o12195.o10674;
         }
         if(o4519.o8116.o16619.o9009(o4670.name) == "Luftplatzen")
         {
            o4290 = o6104.o10642;
            o128 = null;
         }
         if(o4519.o8116.o16619.o9009(o4670.name) == "CM 800 Jupiter")
         {
            o4290 = o6104.o3889;
            o128 = o12195.o9256;
         }
         if(o4670.id == 181)
         {
            o4290 = o6104.o12028;
         }
         else if(o4670.id == 208)
         {
            o4290 = o6104.o17478;
         }
         else if(o4670.id == 211)
         {
            o4290 = o6104.o2617;
            o128 = o12195.o12465;
         }
         else if(o4670.id == 212)
         {
            o4290 = o6104.o10477;
         }
         var _loc5_:int = o1051.o4767(this,0.0333333333333333,o7664,0,false,o1051.o4804);
      }
      
      public function o1698(param1:o4332) : void
      {
         o4519.o8116.o11954.align(o681,param1);
         o4519.o8116.o11954.align(o11194,param1);
      }
      
      public function o11696() : Boolean
      {
         return o4992;
      }
      
      public function trigger() : void
      {
         o18706 = true;
         o10432 = 0.2;
         o15777(o11468.start);
      }
      
      public function o6976() : void
      {
         o18706 = false;
         o15777(o11468.stop);
      }
      
      public function o13927() : void
      {
         o6976();
         o4992 = false;
         o681.o9824 = false;
      }
      
      public function o15341() : void
      {
         o681.o9824 = true;
      }
      
      protected function o7664() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = 0.0333333333333333;
         o10432 = o10432 - _loc1_;
         if(!o4992)
         {
            _loc2_ = 0;
            if(o19863 > 0)
            {
               o19863 = o19863 - _loc1_;
            }
            while(o19863 <= 0 && o20682 > 0)
            {
               if(o4670.o16859 == 1 && o18706 || o4670.o16859 == 2 && o10432 > 0)
               {
                  _loc2_++;
                  o466();
                  o19863 = o19863 + o4670.o19455;
                  o10432 = 0;
                  continue;
               }
               if(o4670.o16859 == 3 && o10432 > 0)
               {
                  o12531 = o4670.o7468;
                  o4249 = 0;
                  o19863 = o19863 + o4670.o19455;
                  o10432 = 0;
                  continue;
               }
               break;
            }
            if(o4249 > 0)
            {
               o4249 = o4249 - _loc1_;
            }
            while(o4249 <= 0 && o12531 > 0 && o20682 > 0)
            {
               _loc2_++;
               o466();
               o12531 = Number(o12531) - 1;
               o4249 = o4249 + o4670.o18634;
            }
            if(_loc2_ > 0)
            {
               o6670(_loc2_);
            }
         }
         else
         {
            o4761 = o4761 - _loc1_;
            if(o4761 <= 0)
            {
               o4761 = 0;
               o19463();
            }
         }
      }
      
      public function get o17492() : Number
      {
         return 1 - o4761 / o4670.o16832;
      }
      
      protected function o466() : void
      {
         o20682 = Number(o20682) - 1;
         if(o20682 == 0)
         {
            o4437();
         }
      }
      
      protected function o6670(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc4_:Number = NaN;
         var _loc3_:* = null;
         o14372 = new o18509(o4670.o5898,o4670.o16295);
         o14372.rotate(o16117.rotation);
         o14372.x = o14372.x + o1432.body.position.x;
         o14372.y = o14372.y + o1432.body.position.y;
         o11194.o9824 = true;
         if(o10762)
         {
            o10762.play();
         }
         _loc2_ = 0;
         while(_loc2_ < o4670.o8015)
         {
            _loc4_ = o16117.rotation + Math.random() * o4670.o13598 * 2 - o4670.o13598;
            _loc3_ = new o18509(1,0);
            _loc3_.rotate(_loc4_);
            o5980(_loc4_,_loc3_,param1);
            _loc2_++;
         }
         o15777(o11468.o6670);
      }
      
      protected function o15381() : void
      {
         var _loc1_:o257 = new o257(o1432.body.position.x,o1432.body.position.y);
         o10204.play(o16485,0,0,false,_loc1_.o10088());
      }
      
      protected function o5912() : void
      {
         var _loc2_:* = null;
         var _loc1_:* = null;
         if(o5601 == -1)
         {
            o5601 = o1051.o9310(this,0.1,o19766);
            _loc2_ = new o257(o1432.body.position.x,o1432.body.position.y);
            _loc1_ = new Date();
            o9933 = _loc1_.valueOf();
            o10204.play(o16485,2147483647,0,false,_loc2_.o10088(),1,0,o9933);
         }
         else
         {
            o1051.reset(o5601);
         }
      }
      
      protected function o19766() : void
      {
         o4519.o8116.o6169.o15448(o9933);
         o5601 = -1;
      }
      
      protected function o4437() : void
      {
         if(o9450())
         {
            o20957();
         }
         else
         {
            o15777(o11468.o9587);
         }
      }
      
      public function o9450() : Boolean
      {
         if(o4992)
         {
            return false;
         }
         if(o20682 == o4670.o3603)
         {
            return false;
         }
         if(o18404 == 0)
         {
            return false;
         }
         return true;
      }
      
      public function o20957() : void
      {
         o8089();
         o4992 = true;
         o4761 = o4670.o16832;
         o15777(o11468.o20957);
      }
      
      public function o19463() : void
      {
         o20682 = o4670.o3603;
         o4992 = false;
         o19863 = 0;
         o12531 = 0;
      }
      
      protected function o8089() : void
      {
         var _loc1_:o10654 = o4519.o8116.o4812;
         _loc1_.o3540.o11173(this,o1432,this.o4670.o14929,o4670.o16832);
      }
      
      public function o7582(param1:Event) : void
      {
         o10762.gotoAndStop(0);
         o11194.o9824 = false;
      }
      
      protected function o5980(param1:Number, param2:o18509, param3:int) : void
      {
      }
      
      private function o16455() : void
      {
         var _loc2_:String = o4519.o8116.o5830.o9009(o4670.o13485);
         var _loc1_:String = o4519.o8116.o5830.o9009(o4670.o4766);
         o6268 = o4519.o8116.o11954.o10869();
         o6268.o16990 = o11381.o11085;
         o6268.o2158 = 7;
         o6268.o16396 = o17541.o13617(_loc1_);
         o6268.position = new o18342(o6268,o16117,o4670.o5898,o4670.o16295,true);
         o6268.o9824 = false;
         o4519.o8116.o11954.o9226(o6268);
         o4213 = o4519.o8116.o11676.o6798(o6268.o16396.assetID);
         o4213.o11525(o6268);
         o4213.o12265 = true;
         o4213.play();
         o15913 = o4519.o8116.o11954.o10869();
         o15913.o16990 = o11381.o11085;
         o15913.o2158 = 7;
         o15913.o16396 = o17541.o13617(_loc2_);
         o15913.position = new o18342(o15913,o16117,o4670.o5898,o4670.o16295,true);
         o15913.o9824 = false;
         o4519.o8116.o11954.o9226(o15913);
         o8656 = o4519.o8116.o11676.o6798(o15913.o16396.assetID);
         o8656.o11525(o15913);
         o8656.o12265 = true;
         o8656.play();
      }
      
      public function o13937(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         o6268.o9824 = true;
         o6268.scaleX = param4;
         o15913.o9824 = true;
         o18342(o15913.position).o10515(o4670.o5898 + param4 * 100,o4670.o16295);
         if(o8571 == -1)
         {
            o8571 = o1051.o9310(this,0.04,o19797);
         }
         else
         {
            o1051.reset(o8571);
         }
      }
      
      private function o19797() : void
      {
         o6268.o9824 = false;
         o15913.o9824 = false;
         o8571 = -1;
      }
      
      public function set o9824(param1:Boolean) : void
      {
         o681.o9824 = param1;
      }
      
      override public function o19115() : void
      {
         o1051.o19115(o5601);
         o4519.o8116.o6169.o15448(o9933);
         super.o19115();
         o681.o19115();
         o11194.o19115();
         if(o10762)
         {
            o10762.o19115();
         }
         if(o6268)
         {
            o6268.o19115();
         }
         o6268 = null;
         if(o4213)
         {
            o4213.o19115();
         }
         o4213 = null;
         if(o15913)
         {
            o15913.o19115();
         }
         o15913 = null;
         if(o8656)
         {
            o8656.o19115();
         }
         o8656 = null;
         o1432 = null;
         o4670 = null;
         o13696 = null;
         o10464 = null;
         o681 = null;
         o11194 = null;
         o10762 = null;
         o14372 = null;
         o16117 = null;
         o10204 = null;
      }
   }
}
