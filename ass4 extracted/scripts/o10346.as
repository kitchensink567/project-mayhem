package
{
   import flash.events.Event;
   
   public class o10346
   {
       
      
      private var o19419:o14200;
      
      private var o5004:int;
      
      public var o4643:Boolean;
      
      private var o5995:Boolean;
      
      private var o2180:Boolean;
      
      private var o2062:Function;
      
      private var o1595:o7385;
      
      private var o1048:Boolean = false;
      
      private var o8832:int = 0;
      
      private var o9922:Function;
      
      private var o16989:o13064;
      
      private var o16010:Boolean = false;
      
      private var o16656:Boolean = false;
      
      public var o9417:Boolean = false;
      
      private var o16465:Boolean = false;
      
      public function o10346(param1:o14200, param2:o13064, param3:Function)
      {
         super();
         this.o19419 = param1;
         this.o16989 = param2;
         if(o19419.o202.o10211)
         {
            o19419.o202.o2685.o16280(o4519.o13206,o9782.o10719,o6646);
         }
         o4519.o8116.o20488.o10608.level = param1.o7923.level;
         this.o9922 = param3;
      }
      
      public function o8125() : void
      {
         o16656 = true;
         o4519.o8116.o9589.o13007();
      }
      
      public function o14279(param1:Boolean) : void
      {
         if(o16656)
         {
            return;
         }
         o16010 = true;
         var _loc2_:o69 = o19419.o202.o18702();
         o4643 = _loc2_.o3807 != 0 && (o19419.o1317.o3288 || o19419.data.o4026(_loc2_.o3807) == false);
         if(param1 || o19419.o202.o10211)
         {
            o4643 = false;
         }
      }
      
      public function o92(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         if(o16656)
         {
            return;
         }
         var _loc3_:o69 = o19419.o202.o18702();
         if(o4519.o8116.o9589.o16375 != null)
         {
            if(o4643 == false)
            {
               o4519.o8116.o9589.o16375.o541();
               o4519.o8116.o9589.o8843 = 0;
            }
            else
            {
               if(o4519.o8116.o9589.o8843 == _loc3_.o3807)
               {
                  if(o4519.o8116.o9589.o16375.o724)
                  {
                     if(_loc3_.o3807 == 1)
                     {
                        o2062 = o13921;
                     }
                     else if(_loc3_.o3807 == 2)
                     {
                        o2062 = o3975;
                     }
                     o2062();
                  }
                  else
                  {
                     o4519.o8116.o9589.o16375.o4882 = o2062;
                     _loc2_ = o4519.o8116.o9589.o16375.o10566();
                     if(_loc3_.o3807 == 1)
                     {
                        o2062 = o13921;
                        o4519.o8116.o9589.o17272(o13921);
                     }
                     else if(_loc3_.o3807 == 2)
                     {
                        o2062 = o3975;
                        o4519.o8116.o9589.o2367(o3975);
                     }
                  }
                  return;
               }
               o4519.o8116.o9589.o16375.o541();
            }
         }
         if(o4643)
         {
            if(_loc3_.o3807 == 1)
            {
               o2062 = o13921;
               o4519.o8116.o9589.o17272(o13921);
            }
            else if(_loc3_.o3807 == 2)
            {
               o2062 = o3975;
               o4519.o8116.o9589.o2367(o3975);
            }
         }
         else
         {
            o2062 = o2055;
            o4519.o8116.o9589.o8899(o19419.o202.o15222,o2055);
         }
      }
      
      public function o12333() : Number
      {
         if(o16656)
         {
            return 0;
         }
         if(o16010 == false)
         {
            return 0;
         }
         var _loc1_:* = 0;
         if(o4643)
         {
            _loc1_ = Number(o4519.o8116.o9589.o2616());
         }
         else
         {
            _loc1_ = Number(o4519.o8116.o9589.o26());
         }
         return _loc1_;
      }
      
      public function o154() : void
      {
         o5995 = true;
         if(o2180)
         {
            o2062();
         }
      }
      
      public function o13640() : void
      {
         o9417 = true;
         if(o4519.o13206 != null)
         {
            o4519.o13206.o12657(o16450.o11970,o8784);
         }
         if(o19419.o202.o2685 != null)
         {
            if(o1048)
            {
               o19419.o202.o2685.o12657(o9782.o10719,o1595.o16043);
               o1595.o5734 = null;
               o1595 = null;
            }
            else
            {
               o19419.o202.o2685.o12657(o9782.o10719,o6646);
            }
         }
         o19419 = null;
         o5004 = 0;
         o4643 = false;
         o5995 = false;
         o2180 = false;
         o2062 = null;
      }
      
      private function o2055() : void
      {
         if(o16656)
         {
            return;
         }
         o8339("####### preloadComplete");
         o2180 = true;
         if(o5995 == false)
         {
            return;
         }
         o4519.o8116.o4812.o15347().defer(o15031);
      }
      
      private function o8784(param1:Event) : void
      {
         if(o9417)
         {
            return;
         }
         o4519.o13206.o12657(o16450.o11970,o8784);
         if(o16656)
         {
            return;
         }
         var _loc2_:o69 = o19419.o202.o18702();
         o4519.o9721.o8917 = _loc2_;
         §§push(o9922());
      }
      
      private function o6646(param1:Event) : void
      {
         if(o16656)
         {
            return;
         }
         if(o16465)
         {
            throw new Error("Room ready called more than once");
         }
         o16465 = true;
         o4519.o13206.o16280(o4519.o13206,o16450.o11970,o8784);
         o4519.o13206.initialise(o19419.o202.o15222,o19419.o202.o10211,o19419.o202.o2685,o19419.o202.o2685.o4326);
      }
      
      private function o16765(param1:Object) : void
      {
         var _loc3_:* = undefined;
         if(o16656)
         {
            return;
         }
         var _loc2_:o69 = o19419.o202.o18702();
         if(!o19419.o202.o10211)
         {
            o19419.o202.o2685 = new o2144();
            o19419.o202.o2685.o9721 = _loc2_.o18800;
            o13064.o13834(o19419.o202.o2685);
            if(o1048 == false)
            {
               o19419.o202.o2685.o16280(null,o9782.o10719,o6646);
            }
            else
            {
               o1595 = new o7385();
               o1595.o5734 = o6646;
               o19419.o202.o2685.o16280(null,o9782.o10719,o1595.o16043);
            }
            _loc3_ = new Vector.<int>();
            _loc3_.push(_loc2_.o18800);
            o19419.o202.o2685.o16955(null,0,o19419.o202.o18339,0,_loc3_);
         }
      }
      
      private function o15031(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o4519.o8116.o8756.o4184().defer(o16765);
      }
      
      private function o10450(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o16989.screen = 40;
      }
      
      private function o5974(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o10450(null);
      }
      
      private function o6658(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o4519.o8116.o8756.o4184().defer(o5974);
      }
      
      private function o13921() : void
      {
         if(o16656)
         {
            return;
         }
         o4519.o8116.o9589.o8843 = 0;
         o2180 = true;
         if(o5995 == false)
         {
            return;
         }
         o6658(null);
      }
      
      private function o13577(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o16989.screen = 42;
      }
      
      private function o19702(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o13577(null);
      }
      
      private function o7918(param1:Object) : void
      {
         if(o16656)
         {
            return;
         }
         o4519.o8116.o8756.o4184().defer(o19702);
      }
      
      private function o3975() : void
      {
         if(o16656)
         {
            return;
         }
         o4519.o8116.o9589.o8843 = 0;
         o2180 = true;
         if(o5995 == false)
         {
            return;
         }
         o7918(null);
      }
   }
}
