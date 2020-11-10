package
{
   public class o18976
   {
       
      
      private var o19419:o14200;
      
      private var o19274:Vector.<String>;
      
      public var o7053:o2007;
      
      public var o4005:o2007;
      
      public var o8843:int = 0;
      
      public var o16375:o2007;
      
      public var o18908:o2007;
      
      private var o14758:int;
      
      private var o3777:int;
      
      private var o17246:Function;
      
      private var o5011:Boolean = false;
      
      public function o18976(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      public function o2962() : void
      {
      }
      
      public function o1872() : void
      {
      }
      
      public function o6725() : Number
      {
         if(o7053 == null)
         {
            return 0;
         }
         return o7053.o10566();
      }
      
      public function o16105() : Number
      {
         return o4005.o10566();
      }
      
      public function o26() : Number
      {
         if(o18908 == null)
         {
            return 1;
         }
         var _loc1_:int = o18908.o5976;
         var _loc2_:int = o18908.o8484;
         if(o14758 != o4005.o5976)
         {
            _loc1_ = _loc1_ + (o4005.o5976 - o14758);
            _loc2_ = _loc2_ + (o4005.o8484 - o14758);
         }
         return _loc2_ / _loc1_;
      }
      
      public function o2616() : Number
      {
         return o16375.o10566();
      }
      
      private function o15288() : void
      {
      }
      
      public function o15872(param1:Function) : void
      {
         var _loc2_:* = null;
         o7053 = new o2007(o19419,"Main");
         o7053.o14990 = 1;
         o7053.o4882 = param1;
         var _loc4_:o2007 = o7053;
         var _loc3_:Vector.<String> = o19419.o19552.o18150("preloadLevelLibs.mainAssets");
         var _loc8_:int = 0;
         var _loc7_:* = _loc3_;
         for each(var _loc6_ in _loc3_)
         {
            _loc2_ = o19419.o19552.o9009("preloadLevelLibs.mainAssets." + _loc6_);
            o7053.o15716(_loc2_);
         }
         var _loc10_:int = 0;
         var _loc9_:* = o4519.o8116.o17130;
         for each(var _loc5_ in o4519.o8116.o17130)
         {
            o7053.o5105(_loc5_);
         }
         o7053.o5356();
      }
      
      private function o12276() : void
      {
         if(o18908 != null && o18908.o724)
         {
            o18908.o13640();
            o18908 = null;
            o17246();
            o17246 = null;
         }
      }
      
      public function o3369() : void
      {
         var _loc1_:* = null;
         if(o5011)
         {
            return;
         }
         o5011 = true;
         if(o16375 == null)
         {
            _loc1_ = o4519.o8116.profileData;
            o8843 = 0;
            if(o8843 == 1)
            {
               this.o17272(null);
            }
            else if(o8843 == 2)
            {
               this.o2367(null);
            }
         }
      }
      
      public function o16063() : void
      {
         o4005 = new o2007(o19419,"Global");
         o4005.o4882 = o12276;
         var _loc3_:int = 0;
         var _loc2_:* = this.o19274;
         for each(var _loc1_ in this.o19274)
         {
            o4005.o15716(_loc1_);
         }
         o4005.o5356();
      }
      
      private function o17136() : void
      {
         if(o4005.o724)
         {
            if(o18908)
            {
               o18908.o13640();
               o18908 = null;
            }
            if(o17246 != null)
            {
               o17246();
               o17246 = null;
            }
         }
      }
      
      public function o8899(param1:int, param2:Function) : void
      {
         if(o18908 != null)
         {
            o13007();
         }
         o18908 = new o2007(o19419,"Map");
         o14758 = o4005.o8484;
         this.o17246 = param2;
         o18908.o4882 = o17136;
         o18908.o14990 = 1;
         o4519.o8116.o5518.o8087(param1).defer(o18908.o18016);
      }
      
      public function o13007() : void
      {
         if(o18908 != null)
         {
            o18908.o13640();
            o18908 = null;
            o17246 = null;
         }
      }
      
      public function o4068() : void
      {
         var _loc1_:* = null;
         this.o19274 = new Vector.<String>();
         var _loc2_:Vector.<String> = o19419.o19552.o18150("preloadLevelLibs.global");
         var _loc7_:int = 0;
         var _loc6_:* = _loc2_;
         for each(var _loc5_ in _loc2_)
         {
            _loc1_ = o19419.o19552.o9009("preloadLevelLibs.global." + _loc5_);
            this.o19274.push(_loc1_);
         }
         _loc2_ = o19419.o19552.o18150("preloadLevelLibs.enemy");
         var _loc9_:int = 0;
         var _loc8_:* = _loc2_;
         for each(var _loc4_ in _loc2_)
         {
            _loc1_ = o19419.o19552.o9009("preloadLevelLibs.enemy." + _loc4_);
            this.o19274.push(_loc1_);
         }
         _loc2_ = o19419.o19552.o18150("preloadLevelLibs.soundLevel");
         var _loc11_:int = 0;
         var _loc10_:* = _loc2_;
         for each(var _loc3_ in _loc2_)
         {
            _loc1_ = o19419.o19552.o9009("preloadLevelLibs.soundLevel." + _loc3_);
            this.o19274.push(_loc1_);
         }
      }
      
      public function o17272(param1:Function) : void
      {
         o16375 = new o2007(o19419,"Onslaught Intro");
         o3777 = o4005 == null?0:o4005.o8484;
         o16375.o4882 = param1;
         o16375.o15716("assets.ui.levelIntro.OnslaughtIntroAnimation");
         o16375.o15716("assets.sounds.music.LoopSmallRoom");
         o16375.o5356();
      }
      
      public function o2367(param1:Function) : void
      {
         o16375 = new o2007(o19419,"Vaccine Intro");
         o3777 = o4005 == null?0:o4005.o8484;
         o16375.o4882 = param1;
         o16375.o15716("assets.ui.levelIntro.VaccineIntro");
         o16375.o15716("assets.sounds.music.LoopSmallRoom");
         o16375.o5356();
      }
   }
}
