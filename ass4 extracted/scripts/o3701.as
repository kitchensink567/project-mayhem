package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class o3701 extends o16681
   {
       
      
      private var o1030:TextField;
      
      private var o20080:TextField;
      
      private var o13233:MovieClip;
      
      public var o18453:Vector.<o15625>;
      
      private var o9679:o20565;
      
      private var o18247:Vector.<String>;
      
      private var o8806:Vector.<String>;
      
      private var o18159:int = 0;
      
      public var o17612:int = 197;
      
      public function o3701()
      {
         super();
      }
      
      public function clear() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o18453;
         for each(var _loc1_ in o18453)
         {
            _loc1_.visible = false;
         }
         o18247.length = 0;
         o8806.length = 0;
         o18159 = 0;
      }
      
      public function o16384(param1:MovieClip, param2:MovieClip) : void
      {
         var _loc4_:* = null;
         var _loc3_:int = 0;
         this.o17612 = param1.y;
         o9679 = new o20565(this);
         o18247 = new Vector.<String>();
         o8806 = new Vector.<String>();
         this.o1030 = param1.getChildByName("lblStatInfoTitle") as TextField;
         this.o20080 = param1.getChildByName("lblStatModifiers") as TextField;
         o20080.height = 200;
         this.o13233 = param1.getChildByName("bg") as MovieClip;
         param1.mouseChildren = false;
         param1.mouseEnabled = false;
         o1030.mouseEnabled = false;
         o20080.mouseEnabled = false;
         o13233.mouseEnabled = false;
         o18453 = new Vector.<o15625>();
         _loc3_ = 0;
         while(_loc3_ < 16)
         {
            _loc4_ = o9679.o17578("attribInfo" + _loc3_.toString(),param2);
            _loc4_.asset.addEventListener("rollOver",o6070,false,0,true);
            _loc4_.asset.addEventListener("rollOut",o14674,false,0,true);
            o18453.push(_loc4_);
            _loc3_++;
         }
         super.init(param1);
      }
      
      public function o9072(param1:int, param2:String, param3:String) : void
      {
         this.asset.y = param1;
         o1030.text = param2;
         o20080.htmlText = param3;
         var _loc5_:Array = param3.split("<br>");
         var _loc6_:int = _loc5_.length;
         var _loc4_:Number = 14.5 * _loc6_ + 25;
         o13233.height = _loc4_;
         this.visible = true;
         if(param1 + _loc4_ > o17612)
         {
            this.asset.y = o17612 - _loc4_;
         }
      }
      
      override public function o13640() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o18453;
         for each(var _loc1_ in o18453)
         {
            _loc1_.asset.removeEventListener("rollOver",o6070);
            _loc1_.asset.removeEventListener("rollOut",o14674);
         }
         o1030 = null;
         o20080 = null;
         o13233 = null;
         o18453 = null;
         o9679 = null;
         super.o13640();
      }
      
      protected function o6070(param1:Event) : void
      {
         var _loc5_:Object = param1.target;
         var _loc3_:MovieClip = param1.target as MovieClip;
         var _loc4_:int = 0;
         var _loc7_:int = 0;
         var _loc6_:* = o18453;
         for each(var _loc2_ in o18453)
         {
            if(_loc2_.asset == _loc3_)
            {
               o1039(_loc4_);
            }
            _loc4_++;
         }
      }
      
      public function o1943(param1:String, param2:String) : void
      {
         o18247.push(param1 + " " + param2);
         o8806.push("");
         o18159 = Number(o18159) + 1;
      }
      
      private function o11688(param1:String) : void
      {
         o18453[o18159 - 1].visible = param1.length > 0;
         if(param1.length == 0)
         {
            return;
         }
         if(o8806[o18159 - 1].length != 0)
         {
            var _loc2_:* = o18159 - 1;
            var _loc3_:* = o8806[_loc2_] + "<br>";
            o8806[_loc2_] = _loc3_;
         }
         _loc3_ = o18159 - 1;
         _loc2_ = o8806[_loc3_] + ("<font color=\'#FF9900\'> " + param1 + "</font>");
         o8806[_loc3_] = _loc2_;
      }
      
      public function o17747(param1:String) : void
      {
         if(param1.length > 0)
         {
            o11688(param1 + " (Elite Core)");
         }
      }
      
      public function o9800(param1:String, param2:String, param3:int) : void
      {
         o11688(param1 + " (Aug: " + param2 + " " + param3.toString() + ")");
      }
      
      public function o19249(param1:String, param2:Number, param3:String, param4:int) : void
      {
         if(param2 != 0)
         {
            o11688(param1 + " (Aug: " + param3 + " " + param4.toString() + ")");
         }
      }
      
      public function o11757(param1:String, param2:String) : void
      {
         if(param1.length > 0)
         {
            o11688(param1 + " (Reward: " + param2 + ")");
         }
      }
      
      public function o18565(param1:String, param2:String) : void
      {
         if(param1.length > 0)
         {
            o11688(param1 + " (" + param2 + ")");
         }
      }
      
      public function o19806(param1:String, param2:String) : void
      {
         if(param1.length > 0)
         {
            o11688(param1 + " (Skill: " + param2 + ")");
         }
      }
      
      protected function o1039(param1:int) : void
      {
         var _loc2_:o15625 = o18453[param1];
         this.o9072(_loc2_.asset.y,o18247[param1],o8806[param1]);
      }
      
      protected function o14674(param1:Event) : void
      {
         this.visible = false;
      }
   }
}
