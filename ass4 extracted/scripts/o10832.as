package
{
   import assets.ui.RecordPagingIcon;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class o10832 extends o20421
   {
       
      
      private var o14313:o15625;
      
      private var o8650:o15625;
      
      private var o1274:int;
      
      private var o12279:int;
      
      private var o1117:int;
      
      private var o15320:int;
      
      private var o17008:Function;
      
      public var o10793:Function;
      
      private var o1428:int = -1;
      
      private var o7868:Boolean = true;
      
      public var o672:Boolean = false;
      
      private var o18654:MovieClip;
      
      private var o10285:int = 75;
      
      public var o11231:Boolean = false;
      
      public function o10832()
      {
         super();
      }
      
      override public function get visible() : Boolean
      {
         return o7868;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         o7868 = param1;
         o14313.visible = param1;
         o8650.visible = param1;
         this.o1746(this.o1274);
         if(_loc2_)
         {
            this.o1258();
         }
      }
      
      public function o18746() : void
      {
         o20561(null);
      }
      
      public function o18690() : Boolean
      {
         return o1117 > 0 && o13330 % o12279 == 0;
      }
      
      public function o16384(param1:o15625, param2:o15625, param3:int, param4:Function, param5:MovieClip) : void
      {
         super.init(null);
         this.o18654 = param5;
         o14313 = param1;
         o8650 = param2;
         this.o17008 = param4;
         o12279 = param3;
         if(o14313 != null)
         {
            o14313.addEventListener("click",o20561,false,0,true);
         }
         if(o8650 != null)
         {
            o8650.addEventListener("click",o5552,false,0,true);
         }
      }
      
      public function o1746(param1:int) : void
      {
         o1274 = param1;
         o15320 = Math.ceil(o1274 / o12279);
         if(o13330 >= o1274)
         {
            o2120 = -1;
            if(o1117 > 0 && o1117 >= o15320)
            {
               o1117 = Number(o1117) - 1;
            }
         }
         var _loc2_:* = o15320 > 1;
         if(o14313 != null)
         {
            o14313.visible = _loc2_;
         }
         if(o8650 != null)
         {
            o8650.visible = _loc2_;
         }
         this.o1258();
      }
      
      public function get o10459() : int
      {
         return o1117;
      }
      
      public function set o10459(param1:int) : void
      {
         o1117 = param1;
         this.o1258();
      }
      
      override public function set o2120(param1:int) : void
      {
         var _loc3_:int = o13330 - o12279 * o1117;
         var _loc2_:int = param1 - o12279 * o1117;
         if(_loc3_ >= 0 && _loc3_ < o18296.length)
         {
            o18296[_loc3_].o3993 = false;
         }
         o13330 = param1;
         if(_loc2_ >= 0 && _loc2_ < o18296.length)
         {
            o18296[_loc2_].o3993 = true;
         }
         o1428 = param1 + o12279 * o1117;
         dispatchEvent(new o11507(o5595.o16737,o13330));
      }
      
      private function o11747() : void
      {
         var _loc1_:int = o13330 - o12279 * o1117;
         if(_loc1_ >= 0 && _loc1_ < o18296.length)
         {
            o18296[_loc1_].o3993 = false;
         }
      }
      
      private function o20561(param1:MouseEvent) : void
      {
         o11747();
         if(o1117 > 0)
         {
            this.o1117--;
         }
         o1258();
         o2120 = o2120;
      }
      
      private function o5552(param1:MouseEvent) : void
      {
         o11747();
         if(o1117 < o15320)
         {
            this.o1117++;
         }
         o1258();
         o2120 = o2120;
      }
      
      override protected function o4063(param1:MouseEvent) : void
      {
         if(o11231)
         {
            return;
         }
         this.o2120 = o8716(param1.target as o15625) + o12279 * o1117;
      }
      
      override public function o13640() : void
      {
         if(o14313 != null)
         {
            o14313.removeEventListener("click",o20561);
         }
         if(o8650 != null)
         {
            o8650.removeEventListener("click",o5552);
         }
         o14313 = null;
         o8650 = null;
         o1274 = 0;
         o12279 = 0;
         o1117 = 0;
         o15320 = 0;
         o17008 = null;
         o1428 = 0;
         o7868 = false;
         o672 = false;
         o18654 = null;
         o10285 = 0;
         o10793 = null;
         super.o13640();
      }
      
      public function o12730(param1:int) : int
      {
         return param1 - o1117 * o12279;
      }
      
      public function o19452(param1:int) : int
      {
         return param1 + o1117 * o12279;
      }
      
      public function o3410(param1:int) : o15625
      {
         var _loc2_:int = o12730(param1);
         if(_loc2_ < 0 || _loc2_ >= o12279)
         {
            return null;
         }
         return o18296[_loc2_];
      }
      
      override protected function draw() : void
      {
         var _loc7_:int = 0;
         var _loc3_:* = NaN;
         var _loc1_:int = 0;
         var _loc6_:* = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         super.draw();
         if(this.o18654 != null)
         {
            if(o18654.numChildren > 0)
            {
               o18654.removeChildren(0,o18654.numChildren - 1);
            }
            _loc7_ = 0.5 * this.o10285 * o15320;
            _loc3_ = 0;
            if(o15320 % 2 != 0)
            {
               _loc3_ = Number(o10285 * 0.5);
            }
            _loc1_ = 0;
            while(_loc1_ < o15320)
            {
               _loc6_ = new RecordPagingIcon();
               _loc6_.gotoAndStop(_loc1_ == o1117?"on":"off");
               _loc6_.x = _loc1_ * o10285 - _loc7_ + _loc3_;
               o18654.addChild(_loc6_);
               _loc1_++;
            }
         }
         if(o17008 != null)
         {
            _loc4_ = o1117 * o12279;
            var _loc9_:int = 0;
            var _loc8_:* = o18296;
            for each(var _loc2_ in o18296)
            {
               _loc5_ = this.visible && _loc4_ < o1274;
               if(o672)
               {
                  _loc2_.enabled = _loc5_;
               }
               else
               {
                  _loc2_.visible = _loc5_;
               }
               if(_loc5_)
               {
                  o17008(_loc4_,_loc2_);
               }
               else if(o10793 != null)
               {
                  o10793(_loc4_,_loc2_);
               }
               if(o672)
               {
                  _loc2_.visible = true;
               }
               _loc4_++;
            }
         }
         if(o8650 != null)
         {
            o8650.enabled = o1117 < o15320 - 1;
         }
         if(o14313 != null)
         {
            o14313.enabled = o1117 > 0;
         }
      }
   }
}
