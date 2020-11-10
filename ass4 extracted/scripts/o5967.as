package
{
   import assets.ui.MiniMapArrowEdge;
   import assets.ui.VIPMarker;
   import flash.events.Event;
   
   public class o5967 extends o7848
   {
       
      
      private var o3559:o4039 = null;
      
      private var o12097:o4039 = null;
      
      private var o7112:o4039 = null;
      
      private var o5510:int = -1;
      
      private var o6297:uint = 0;
      
      private var o9366:int = 0;
      
      private var o13917:Boolean = false;
      
      private var o16973:Boolean = false;
      
      private var o6753:Boolean = true;
      
      private var o12515:o17517 = null;
      
      private var o12272 = null;
      
      private var o7320:o4332 = null;
      
      public function o5967()
      {
         super();
      }
      
      public static function getGlobalCacheAssets() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("assets.contractcommon.ammoCache");
         _loc1_.push("assets.contractcommon.ammoCacheBackpack");
         return _loc1_;
      }
      
      public function o16955(param1:int, param2:*, param3:o10262, param4:int, param5:Boolean = true) : void
      {
         this.o5973 = param1;
         this.o12272 = param2;
         this.o9366 = param4;
         this.o6753 = true;
         var _loc7_:o4332 = o4519.o8116.o11954.o10869();
         _loc7_.o16396 = o17541.o13617("assets.contractcommon.ammoCache");
         _loc7_.o16990 = o11381.o11085;
         var _loc6_:o10262 = o4519.o8116.o9869.o1968(1,1,false);
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
         o3559 = o4519.o8116.o20600.o15803(o8723.o9135,o8723.trigger,o8723.trigger,true);
         o3559.o10289 = _loc8_.id;
         _loc6_.o14230(o3559);
         super.o10783(param1,_loc6_,_loc7_,o4519.o8116.o11676);
         o16166.o12265 = true;
         o16166.play();
         o7112.o16280(this,o2841.o1516,o4949);
         o3559.o16280(this,o2841.o1516,o11120);
         o9072();
         if(param5)
         {
            o14070();
         }
      }
      
      private function o7658() : void
      {
         if(o12515 && !o6753 && o12272 && !o12272.o20797() && o12515.o6691 && o12515.o6691.position)
         {
            o8564(o12515.o6691.position.x,o12515.o6691.position.y);
         }
      }
      
      private function o4949(param1:o4217) : void
      {
         var _loc2_:o17517 = o17517(o4519.o8116.o2996.o14389(param1.o11541.body));
         if(this && _loc2_ && !_loc2_.o7694 && !_loc2_.o18398())
         {
            o12272.o14566(o12272.o16183,this,_loc2_.o5973);
         }
      }
      
      private function o11120(param1:o4217) : void
      {
         o12272.o14566(o12272.o6901,this,o773());
      }
      
      private function o2515(param1:Event) : void
      {
         o12272.o14566(o12272.o138,this,o773());
      }
      
      public function o19218(param1:o17517) : void
      {
         if(this && param1)
         {
            if(o6460(param1))
            {
               o14322();
               o12515.o16280(o12515,o2777.o3964,o2515);
               o7320 = o12515.o1358("assets.contractcommon.ammoCacheBackpack");
               o5510 = o1051.o4767(this,0.5,o7658);
               o7112.o12657(o2841.o1516,o4949);
               o18883();
               o6753 = false;
               if(o4519.o32 == o12515)
               {
                  o14200.o19505.o202.o1526("Cache Picked Up",o4519.o32);
                  o4519.o8116.o4812.ui.o8512.play(1);
               }
            }
         }
      }
      
      public function o19340(param1:o17517) : void
      {
         if(this && param1 && !o16973)
         {
            if(o12515)
            {
               o12515.o11568();
               o12515.o12657(o2777.o3964,o2515);
            }
            o7112.o12657(o2841.o1516,o4949);
            o3559.o12657(o2841.o1516,o11120);
            o1051.o19115(o5510);
            o16973 = true;
            o6753 = false;
            o14322();
            o8564(param1.o6691.position.x,param1.o6691.position.y);
            o6691.o9824 = true;
            o16166.o12265 = false;
            o18883();
            if(o4519.o32 == param1)
            {
               o14200.o19505.o202.o1526("Cache Returned",o4519.o32);
               o4519.o8116.o4812.o10460.o9472.play(1);
            }
         }
      }
      
      public function o19059(param1:o17517) : void
      {
         if(this && param1)
         {
            if(o6460(param1))
            {
               if(o12515)
               {
                  o12515.o11568();
                  o8564(o12515.o6691.position.x,o12515.o6691.position.y);
               }
               o7112.o16280(this,o2841.o1516,o4949);
               o1051.o19115(o5510);
               o9072();
               o14070();
               o6753 = true;
               if(o4519.o32 == param1)
               {
                  o14200.o19505.o202.o1526("Cache Dropped",o4519.o32);
                  o4519.o8116.o4812.ui.o11423.play(1);
               }
            }
         }
      }
      
      public function o6460(param1:o17517) : Boolean
      {
         if(param1)
         {
            o12515 = param1;
            return true;
         }
         return false;
      }
      
      public function o15943() : int
      {
         return o9366;
      }
      
      public function o773() : int
      {
         if(o12515 && o6753 == false)
         {
            return o12515.o5973;
         }
         return -1;
      }
      
      public function o8564(param1:Number, param2:Number) : void
      {
         body.o8564(param1,param2);
      }
      
      public function o14322() : void
      {
         o12097.o8508(0);
         o7112.o8508(0);
         o6691.o9824 = false;
         o13917 = false;
      }
      
      public function o9072() : void
      {
         o12097.o8508(o6297);
         o7112.o8508(o8723.o32);
         o6691.o9824 = true;
         o13917 = true;
      }
      
      public function o14070() : void
      {
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o20838(new VIPMarker(),new MiniMapArrowEdge(),this);
         }
      }
      
      public function o18883() : void
      {
         if(o12891.o19505 && o12891.o19505.o16587)
         {
            o12891.o19505.o16587.o18312(this);
         }
      }
      
      override public function o19115() : void
      {
         if(o5836)
         {
            return;
         }
         o1051.o19115(o5510);
         o18883();
         o3559 = null;
         o12097 = null;
         o7112 = null;
         super.o19115();
      }
   }
}
