package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class o20213 extends o16681
   {
      
      private static const o17795:int = 140;
      
      private static const o10530:int = 120;
      
      private static const o11306:int = -70;
      
      private static const o18463:int = -60;
      
      private static const o12603:Rectangle = new Rectangle(17,43.5,125,113);
      
      private static const o13103:Point = new Point(77,99);
      
      private static const o4409:String = "VaccineMap";
      
      private static const o1837:String = "VaccineMapSubwayEnd";
       
      
      private const o15553:Number = 0.1;
      
      private const o13112:Number = 0.02;
      
      private const o11095:Number = 0.25;
      
      private const o19097:Number = 0.02;
      
      private var o9679:o20565;
      
      public var o16587:MovieClip;
      
      private var o14739:MovieClip;
      
      private var o14988:MovieClip;
      
      private var o13212:Sprite;
      
      private var o6098:Number;
      
      private var o3499:Bitmap;
      
      private var enabled:Boolean = true;
      
      private var o5475:o15704;
      
      private var o14505:Vector.<MovieClip>;
      
      private var o10892:Vector.<MovieClip>;
      
      private var o16989:o13064;
      
      private var o16976:Vector.<MovieClip>;
      
      private var o15374:Dictionary;
      
      private var o12436:Vector.<int>;
      
      private var o18729:BitmapData;
      
      private var o2342:Dictionary;
      
      private var o3152:Dictionary;
      
      private var o6439:Point;
      
      private var o9071:Vector.<o16159>;
      
      private var o4044:Dictionary;
      
      private var o2799:Dictionary;
      
      private var o15634:BitmapData;
      
      private var o9697:BitmapData;
      
      private var o12628:BitmapData;
      
      private var o11820:BitmapData;
      
      private var o14469:Point;
      
      private var o8008:Point;
      
      private var o19281:Point;
      
      private var o5427:Point;
      
      private var o18760:Rectangle;
      
      private var o10837:Rectangle;
      
      private var o5579:Point;
      
      private var o10275:int = 0;
      
      public function o20213()
      {
         o15374 = new Dictionary(false);
         o12436 = new Vector.<int>();
         o2342 = new Dictionary();
         o3152 = new Dictionary();
         o6439 = new Point();
         o4044 = new Dictionary();
         o2799 = new Dictionary();
         o5579 = new Point(0,0);
         super();
      }
      
      public function o20838(param1:DisplayObject, param2:DisplayObject, param3:o7848) : void
      {
         if(o2342[param3.o5973] != null)
         {
            o2342[param3.o5973].o19115();
         }
         o2342[param3.o5973] = new o12009(this,param1,param2,param3);
      }
      
      public function o18312(param1:o7848) : void
      {
         if(o2342[param1.o5973] != null)
         {
            o2342[param1.o5973].o19115();
            delete o2342[param1.o5973];
         }
      }
      
      public function o12029(param1:DisplayObject, param2:DisplayObject, param3:Number, param4:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc13_:Number = param3 * o6098;
         var _loc12_:Number = param4 * o6098;
         _loc13_ = _loc13_ + (o13103.x + o14988.x);
         _loc12_ = _loc12_ + (o13103.y + o14988.y);
         var _loc9_:* = param1;
         var _loc7_:* = param2;
         var _loc10_:Boolean = false;
         if(_loc13_ < o12603.left)
         {
            _loc13_ = o12603.left;
            _loc10_ = true;
         }
         else if(_loc13_ > o12603.right)
         {
            _loc13_ = o12603.right;
            _loc10_ = true;
         }
         if(_loc12_ < o12603.top)
         {
            _loc12_ = o12603.top;
            _loc10_ = true;
         }
         else if(_loc12_ > o12603.bottom)
         {
            _loc12_ = o12603.bottom;
            _loc10_ = true;
         }
         _loc9_.x = _loc13_;
         _loc9_.y = _loc12_;
         _loc7_.x = _loc13_;
         _loc7_.y = _loc12_;
         _loc9_.visible = _loc10_ == false;
         _loc7_.visible = _loc10_;
         if(_loc7_.visible)
         {
            _loc6_ = o6439.x - param3;
            _loc5_ = o6439.y - param4;
            _loc11_ = _loc6_ * _loc6_ + _loc5_ * _loc5_;
            _loc8_ = Math.atan2(_loc5_,_loc6_) / 3.14159265358979 * 180;
            _loc7_.rotation = _loc8_ - 90;
         }
      }
      
      private function o14918() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = o2342;
         for(var _loc1_ in o2342)
         {
            o2342[_loc1_].o19115();
         }
         o2342 = new Dictionary();
         var _loc5_:int = 0;
         var _loc4_:* = o3152;
         for(_loc1_ in o3152)
         {
            o3152[_loc1_].o19115();
         }
         o3152 = new Dictionary();
      }
      
      public function o19147(param1:o7848, param2:o7848) : void
      {
         var _loc3_:* = null;
         if(param1 && param2 && o2342)
         {
            _loc3_ = o2342[param1.o5973];
            if(_loc3_)
            {
               _loc3_.entity = param2;
            }
         }
      }
      
      public function o17855(param1:int, param2:DisplayObject, param3:DisplayObject, param4:Number, param5:Number) : void
      {
         if(o3152[param1] != null)
         {
            o3152[param1].o19115();
         }
         o3152[param1] = new o19566(this,param2,param3,param1,param4,param5);
      }
      
      public function o14829(param1:int) : void
      {
         if(o3152[param1] != null)
         {
            o3152[param1].o19115();
            delete o3152[param1];
         }
      }
      
      public function o10502(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:o19566 = o3152[param1];
         _loc4_.o3081 = param2;
         _loc4_.o20184 = param3;
      }
      
      private function o14104(param1:int, param2:int, param3:Number, param4:Number) : Number
      {
         o12436.push(param1);
         var _loc5_:o17729 = o15374[param1] as o17729;
         if(_loc5_ == null)
         {
            _loc5_ = new o17729();
            _loc5_.o797 = param1;
            _loc5_.o8463 = param2;
            _loc5_.o2008();
            o15374[param1] = _loc5_;
         }
         _loc5_.x = param3;
         _loc5_.y = param4;
         return _loc5_.alpha;
      }
      
      public function o16384(param1:MovieClip, param2:o13064) : void
      {
         var _loc8_:int = 0;
         var _loc7_:* = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super.init(param1);
         o18729 = new BitmapData(140,120,false,1638400);
         o18760 = new Rectangle(0,0,140,120);
         o10837 = new Rectangle(0,0,140,120);
         this.o16989 = param2;
         o9679 = new o20565(this);
         o16587 = param1;
         o14739 = o16587.getChildByName("mapContainer") as MovieClip;
         o14988 = o14739.getChildByName("mapBg") as MovieClip;
         o14739 = o14739;
         o14505 = new Vector.<MovieClip>();
         o10892 = new Vector.<MovieClip>();
         var _loc10_:Vector.<MovieClip> = new Vector.<MovieClip>();
         _loc8_ = 0;
         while(_loc8_ < 20)
         {
            _loc7_ = o16587.getChildByName("arrowEdge" + _loc8_.toString()) as MovieClip;
            _loc7_.x = o13103.x;
            _loc7_.y = o13103.y;
            _loc10_.push(_loc7_);
            _loc8_++;
         }
         o5475 = new o15704(o16587,_loc10_);
         o14988.removeChildren(0,o14988.numChildren - 1);
         o12682 = 0.1;
         o13212 = new Sprite();
         this.o14739.addChild(o13212);
         o9071 = new Vector.<o16159>();
         var _loc3_:o16159 = new o16159();
         o9071.push(_loc3_);
         var _loc6_:o16159 = new o16159();
         o9071.push(_loc6_);
         var _loc9_:o16159 = new o16159();
         o9071.push(_loc9_);
         _loc4_ = 0;
         while(_loc4_ < 4)
         {
            _loc3_.o6456.push(o16587.getChildByName("assaultTarget" + _loc4_.toString()) as MovieClip);
            _loc3_.o17242.push(o16587.getChildByName("assaultArrowEdge" + _loc4_.toString()) as MovieClip);
            _loc9_.o6456.push(o16587.getChildByName("heavyTarget" + _loc4_.toString()) as MovieClip);
            _loc9_.o17242.push(o16587.getChildByName("heavyArrowEdge" + _loc4_.toString()) as MovieClip);
            _loc6_.o6456.push(o16587.getChildByName("medicTarget" + _loc4_.toString()) as MovieClip);
            _loc6_.o17242.push(o16587.getChildByName("medicArrowEdge" + _loc4_.toString()) as MovieClip);
            _loc4_++;
         }
         o15617();
         o16976 = new Vector.<MovieClip>();
         _loc5_ = 0;
         while(_loc5_ < 6)
         {
            o16976.push(o16587.getChildByName("strongboxArrowEdge" + _loc5_.toString()) as MovieClip);
            _loc5_++;
         }
         o2460();
      }
      
      public function o15617() : void
      {
         var _loc9_:int = 0;
         var _loc8_:* = this.o9071;
         for each(var _loc3_ in this.o9071)
         {
            var _loc5_:int = 0;
            var _loc4_:* = _loc3_.o6456;
            for each(var _loc2_ in _loc3_.o6456)
            {
               if(_loc2_.visible)
               {
                  _loc2_.visible = false;
               }
            }
            var _loc7_:int = 0;
            var _loc6_:* = _loc3_.o17242;
            for each(var _loc1_ in _loc3_.o17242)
            {
               if(_loc1_.visible)
               {
                  _loc1_.visible = false;
               }
            }
         }
         o2460();
      }
      
      public function o2460() : void
      {
         o10275 = 0;
         var _loc3_:int = 0;
         var _loc2_:* = o16976;
         for each(var _loc1_ in o16976)
         {
            _loc1_.visible = false;
         }
      }
      
      public function o15689(param1:String, param2:Number, param3:Number) : void
      {
         var _loc4_:MovieClip = o16965(param1);
         if(_loc4_ != null && _loc4_.visible)
         {
            param2 = param2 * o6098;
            param3 = param3 * o6098;
            _loc4_.x = param2;
            _loc4_.y = param3;
         }
      }
      
      public function o16500(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         var _loc12_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc10_:Number = o6439.x - param3;
         var _loc5_:Number = o6439.y - param4;
         param3 = param3 * o6098;
         param4 = param4 * o6098;
         param3 = o13103.x + param3 + o14988.x;
         param4 = o13103.y + param4 + o14988.y;
         var _loc11_:o16159 = o9071[param2];
         var _loc8_:MovieClip = _loc11_.o6456[param1];
         var _loc7_:MovieClip = _loc11_.o17242[param1];
         var _loc9_:Boolean = false;
         if(param3 < o12603.left)
         {
            param3 = o12603.left;
            _loc9_ = true;
         }
         else if(param3 > o12603.right)
         {
            param3 = o12603.right;
            _loc9_ = true;
         }
         if(param4 < o12603.top)
         {
            param4 = o12603.top;
            _loc9_ = true;
         }
         else if(param4 > o12603.bottom)
         {
            param4 = o12603.bottom;
            _loc9_ = true;
         }
         _loc8_.x = param3;
         _loc8_.y = param4;
         _loc7_.x = param3;
         _loc7_.y = param4;
         _loc8_.visible = _loc9_ == false;
         _loc7_.visible = _loc9_;
         if(_loc7_.visible)
         {
            _loc12_ = _loc10_ * _loc10_ + _loc5_ * _loc5_;
            _loc6_ = Math.atan2(_loc5_,_loc10_) / 3.14159265358979 * 180;
            _loc7_.rotation = _loc6_ + 90;
         }
      }
      
      public function o2792(param1:DisplayObject) : void
      {
         this.o14988.addChild(param1);
      }
      
      public function get o12682() : Number
      {
         return o6098;
      }
      
      public function set o12682(param1:Number) : void
      {
         o6098 = param1;
      }
      
      override public function o13640() : void
      {
         o5475.o13640();
         o14739.removeChild(o3499);
         o18729.dispose();
         if(o9697 != null)
         {
            o9697.dispose();
         }
         if(o12628 != null)
         {
            o12628.dispose();
         }
         if(o11820 != null)
         {
            o11820.dispose();
         }
         var _loc4_:int = 0;
         var _loc3_:* = o4044;
         for each(var _loc1_ in o4044)
         {
            _loc1_.dispose();
         }
         o9679.o13640();
         var _loc6_:int = 0;
         var _loc5_:* = this.o9071;
         for each(var _loc2_ in this.o9071)
         {
            _loc2_.o13640();
         }
         o14918();
         o9679 = null;
         o16587 = null;
         o14739 = null;
         o14988 = null;
         o13212 = null;
         o6098 = 0;
         enabled = false;
         o5475 = null;
         o14505 = null;
         o10892 = null;
         o16989 = null;
         o15374 = null;
         o12436 = null;
         o18729 = null;
         o15634 = null;
         o9697 = null;
         o12628 = null;
         o11820 = null;
         o19281 = null;
         o5427 = null;
         o8008 = null;
         o18760 = null;
         o5579 = null;
         o14469 = null;
         o4044 = null;
         o2799 = null;
         o10837 = null;
         o9071 = null;
         o6439 = null;
         o3499 = null;
         o16976 = null;
         o2342 = null;
         super.o13640();
      }
      
      public function o14699(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,0,param2,param3);
      }
      
      public function o15802(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,2,param2,param3);
      }
      
      public function o6039(param1:int, param2:Number, param3:Number, param4:Boolean, param5:Boolean) : void
      {
         if(enabled == false)
         {
            return;
         }
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         if(param4)
         {
            o14104(param1,8,param2,param3);
         }
         else if(param5)
         {
            o14104(param1,9,param2,param3);
         }
         else
         {
            o14104(param1,1,param2,param3);
         }
      }
      
      public function o11642(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,3,param2,param3);
      }
      
      public function o7856(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,4,param2,param3);
      }
      
      public function o19431(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,10,param2,param3);
      }
      
      public function o13225(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,5,param2,param3);
      }
      
      public function o5804(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         if(param2 == 0 && param3 == 0)
         {
            return;
         }
         var _loc4_:* = 3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         o14104(param1,6,param2,param3);
         o20190(param1,param2,param3);
      }
      
      public function o20775(param1:int, param2:Number, param3:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         var _loc4_:* = 2;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
      }
      
      public function o13223(param1:int, param2:int, param3:Number, param4:Number) : void
      {
         if(enabled == false)
         {
            return;
         }
         param3 = param3 * o6098;
         param4 = param4 * o6098;
         o14104(param2,param1,param3,param4);
      }
      
      public function o3823(param1:Number, param2:Number) : void
      {
         var _loc8_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc9_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc6_:Number = NaN;
         if(enabled == false)
         {
            return;
         }
         o6439.x = param1;
         o6439.y = param2;
         o14988.x = -param1 * o12682;
         o14988.y = -param2 * o12682;
         o13212.x = o14988.x;
         o13212.y = o14988.y;
         o18760.x = param1 * o12682 + -70;
         o18760.y = param2 * o12682 + -60;
         var _loc10_:Boolean = false;
         _loc8_ = 0;
         while(_loc8_ < o10892.length)
         {
            _loc4_ = o10892[_loc8_];
            _loc5_ = o14505[_loc8_];
            _loc9_ = _loc4_.x / o12682 - param1;
            _loc3_ = _loc4_.y / o12682 - param2;
            _loc11_ = _loc9_ * _loc9_ + _loc3_ * _loc3_;
            _loc7_ = 266323;
            _loc6_ = Math.atan2(_loc3_,_loc9_) / 3.14159265358979 * 180;
            _loc5_.rotation = _loc6_ + 90;
            _loc5_.x = o13103.x + _loc4_.x + o14988.x;
            _loc5_.y = o13103.y + _loc4_.y + o14988.y;
            _loc10_ = false;
            if(_loc5_.x < o12603.left)
            {
               _loc5_.x = o12603.left;
               _loc10_ = true;
            }
            else if(_loc5_.x > o12603.right)
            {
               _loc5_.x = o12603.right;
               _loc10_ = true;
            }
            if(_loc5_.y < o12603.top)
            {
               _loc5_.y = o12603.top;
               _loc10_ = true;
            }
            else if(_loc5_.y > o12603.bottom)
            {
               _loc5_.y = o12603.bottom;
               _loc10_ = true;
            }
            _loc5_.visible = _loc10_;
            _loc4_.visible = !_loc10_;
            _loc8_++;
         }
      }
      
      private function o15495(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return Math.atan2(param3 - param4,param1 - param2) * 180 / 3.14159265358979;
      }
      
      private function o16965(param1:String) : MovieClip
      {
         var _loc2_:Array = param1.split(".");
         var _loc5_:MovieClip = o14739.getChildByName("mapBg") as MovieClip;
         if(_loc5_.numChildren < 1)
         {
            throw new Error("Minimap not loaded, running old level?");
         }
         var _loc4_:MovieClip = _loc5_.getChildAt(0) as MovieClip;
         if(_loc4_.numChildren == 0)
         {
            return null;
         }
         _loc4_ = _loc4_.getChildAt(0) as MovieClip;
         var _loc3_:MovieClip = _loc4_.getChildByName(_loc2_[0]) as MovieClip;
         _loc2_.splice(0,1);
         while(_loc3_ != null && _loc2_.length > 0)
         {
            _loc3_ = _loc3_.getChildByName(_loc2_[0]) as MovieClip;
            _loc2_.splice(0,1);
         }
         return _loc3_;
      }
      
      public function o11987(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc6_:int = 0;
         var _loc5_:* = o10892;
         for each(var _loc4_ in o10892)
         {
            if(_loc4_.name == param1)
            {
               return;
            }
         }
         var _loc3_:MovieClip = o16965(param1);
         if(_loc3_ != null)
         {
            _loc3_.visible = true;
            _loc3_.gotoAndPlay(1);
            this.o10892.push(_loc3_);
            _loc2_ = this.o5475.o11893();
            this.o14505.push(_loc2_);
         }
      }
      
      public function o1141(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         _loc3_ = 0;
         while(_loc3_ < o10892.length)
         {
            _loc2_ = o10892[_loc3_];
            if(_loc2_.name == param1)
            {
               this.o5475.o15828(o14505[_loc3_]);
               _loc2_.gotoAndStop(1);
               _loc2_.visible = false;
               this.o10892.splice(_loc3_,1);
               this.o14505.splice(_loc3_,1);
               return;
            }
            _loc3_++;
         }
      }
      
      public function o8584(param1:Number) : void
      {
         var _loc9_:* = null;
         var _loc7_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = NaN;
         var _loc6_:Number = NaN;
         var _loc12_:* = null;
         var _loc11_:* = null;
         if(enabled == false)
         {
            return;
         }
         o15208();
         var _loc2_:* = 0;
         var _loc5_:* = 0;
         var _loc8_:ColorTransform = new ColorTransform();
         var _loc14_:int = 0;
         var _loc13_:* = o15374;
         for(var _loc10_ in o15374)
         {
            _loc7_ = o15374[_loc10_];
            _loc2_ = Number(-o18760.x + _loc7_.x);
            _loc5_ = Number(-o18760.y + _loc7_.y);
            if(o12436.indexOf(_loc10_) < 0)
            {
               if(_loc7_.o20013())
               {
                  _loc7_ = null;
                  delete o15374[_loc10_];
               }
            }
            if(_loc7_ != null)
            {
               _loc3_ = o2799[_loc7_.o8463];
               _loc2_ = Number(_loc2_ + _loc3_.x);
               _loc5_ = Number(_loc5_ + _loc3_.y);
               _loc4_ = 5;
               if(!(_loc2_ < -_loc4_ || _loc2_ > 140 + _loc4_ || _loc5_ < -_loc4_ || _loc5_ > 120 + _loc4_))
               {
                  _loc7_.o7658(param1);
                  _loc6_ = _loc7_.alpha;
                  _loc12_ = o4044[_loc7_.o8463];
                  _loc11_ = new Matrix();
                  _loc11_.translate(_loc2_,_loc5_);
                  _loc8_.alphaMultiplier = _loc6_;
                  o18729.draw(_loc12_,_loc11_,_loc8_);
               }
            }
         }
      }
      
      public function o9808() : void
      {
         if(enabled == false)
         {
            return;
         }
         o13212.graphics.clear();
         o12436 = new Vector.<int>();
      }
      
      private function o15208() : void
      {
         if(o14469 == null || o15634 == null)
         {
            return;
         }
         o18729.fillRect(o18729.rect,1638400);
         o10837.x = o18760.x - o14469.x;
         o10837.y = o18760.y - o14469.y;
         o18729.copyPixels(o15634,o10837,o5579);
      }
      
      private function o14163(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:Matrix = new Matrix();
         _loc4_.scale(0.1,0.1);
         if(param1.name == "bg" || param1.name == o4409 || param1.name == o1837)
         {
            if(param1.name == o4409)
            {
               o19281 = new Point(param1.x,param1.y);
               o12628 = new BitmapData(param1.width,param1.height,false,0);
               o12628.draw(param1,_loc4_);
               o15634 = o12628;
               o14469 = o19281;
            }
            else if(param1.name == o1837)
            {
               o5427 = new Point(param1.x,param1.y);
               o14469 = o5427;
               o11820 = new BitmapData(param1.width,param1.height,false,0);
               o11820.draw(param1,_loc4_);
            }
            else if(param1.name == "bg")
            {
               o8008 = new Point(param1.x,param1.y);
               o9697 = new BitmapData(param1.width,param1.height,false,0);
               o9697.draw(param1,_loc4_);
               o15634 = o9697;
               o14469 = o8008;
            }
            param1.visible = false;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ is MovieClip)
            {
               o14163(_loc3_ as MovieClip);
            }
            _loc2_++;
         }
      }
      
      private function o16313(param1:int, param2:Number, param3:int) : void
      {
         var _loc5_:MovieClip = new MovieClip();
         _loc5_.graphics.beginFill(param3);
         _loc5_.graphics.drawCircle(param2,param2,param2);
         _loc5_.graphics.endFill();
         var _loc4_:BitmapData = new BitmapData(param2 * 2,param2 * 2,true,4278190080);
         _loc4_.draw(_loc5_);
         o4044[param1] = _loc4_;
         o2799[param1] = new Point(-param2,-param2);
      }
      
      public function o15583(param1:MovieClip) : void
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         _loc2_ = 0;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ is MovieClip)
            {
               o14163(_loc3_ as MovieClip);
            }
            _loc2_++;
         }
         o3499 = new Bitmap(o18729);
         o3499.x = -70;
         o3499.y = -60;
         o14739.addChildAt(o3499,0);
         o16313(0,3,16777215);
         o16313(1,3,16711680);
         o16313(2,3,65280);
         o16313(3,3,65535);
         o16313(4,3,65280);
         o16313(5,3,65280);
         o16313(6,3,16776960);
         o16313(7,2,267387135);
         o16313(8,4,16733440);
         o16313(9,3,16733440);
         o16313(10,3,16746632);
         o16313(11,3,5865562);
      }
      
      public function o598(param1:String, param2:Boolean) : void
      {
         var _loc3_:MovieClip = o16965(param1);
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.name == o4409)
         {
            if(param2)
            {
               o14469 = o19281;
               o15634 = o12628;
            }
            else
            {
               o14469 = o5427;
               o15634 = o11820;
            }
            o14469 = o19281;
            _loc3_.gotoAndStop(1);
            _loc3_.visible = false;
            return;
         }
         if(_loc3_.name == o1837)
         {
            if(param2)
            {
               o14469 = o5427;
               o15634 = o11820;
            }
            else
            {
               o14469 = o19281;
               o15634 = o12628;
            }
            o14469 = o5427;
            _loc3_.gotoAndStop(1);
            _loc3_.visible = false;
            return;
         }
         if(param2)
         {
            _loc3_.gotoAndPlay(1);
         }
         else
         {
            _loc3_.gotoAndStop(1);
         }
         _loc3_.visible = param2;
      }
      
      public function o16027(param1:String, param2:Boolean) : void
      {
         var _loc3_:MovieClip = o16965(param1);
         _loc3_.visible = param2;
      }
      
      public function o6074(param1:String, param2:Object) : void
      {
         var _loc3_:MovieClip = o16965(param1);
         _loc3_.gotoAndStop(param2);
      }
      
      public function o20190(param1:int, param2:Number, param3:Number) : void
      {
         var _loc9_:Number = NaN;
         var _loc5_:Number = NaN;
         if(o10275 >= o16976.length - 1)
         {
            return;
         }
         param2 = param2 / o6098;
         param3 = param3 / o6098;
         var _loc8_:Number = o6439.x - param2;
         var _loc4_:Number = o6439.y - param3;
         param2 = param2 * o6098;
         param3 = param3 * o6098;
         param2 = o13103.x + param2 + o14988.x;
         param3 = o13103.y + param3 + o14988.y;
         var _loc6_:MovieClip = o16976[o10275];
         o10275 = Number(o10275) + 1;
         var _loc7_:Boolean = false;
         if(param2 < o12603.left)
         {
            param2 = o12603.left;
            _loc7_ = true;
         }
         else if(param2 > o12603.right)
         {
            param2 = o12603.right;
            _loc7_ = true;
         }
         if(param3 < o12603.top)
         {
            param3 = o12603.top;
            _loc7_ = true;
         }
         else if(param3 > o12603.bottom)
         {
            param3 = o12603.bottom;
            _loc7_ = true;
         }
         _loc6_.x = param2;
         _loc6_.y = param3;
         _loc6_.visible = _loc7_;
         if(_loc6_.visible)
         {
            _loc9_ = _loc8_ * _loc8_ + _loc4_ * _loc4_;
            _loc5_ = Math.atan2(_loc4_,_loc8_) / 3.14159265358979 * 180;
            _loc6_.rotation = _loc5_ + 90;
         }
      }
   }
}

import flash.display.DisplayObject;

class o12009
{
    
   
   private var o3921:Object;
   
   private var display:DisplayObject;
   
   private var o509:DisplayObject;
   
   public var entity:o7848;
   
   private var o9325:int;
   
   function o12009(param1:Object, param2:DisplayObject, param3:DisplayObject, param4:o7848)
   {
      super();
      this.o3921 = param1;
      this.display = param2;
      this.o509 = param3;
      this.entity = param4;
      param1.o16587.addChild(param2);
      param1.o16587.addChild(param3);
      o9325 = o1051.o4767(param4,0.0333333333333333,o7658);
   }
   
   private function o7658() : void
   {
      var _loc2_:Number = entity.body.position.x;
      var _loc1_:Number = entity.body.position.y;
      if(entity is o9347)
      {
         _loc2_ = o9347(entity).o7953.x;
         _loc1_ = o9347(entity).o7953.y;
      }
      o3921.o12029(display,o509,_loc2_,_loc1_);
   }
   
   public function o19115() : void
   {
      o1051.o19115(o9325);
      o3921.o16587.removeChild(display);
      o3921.o16587.removeChild(o509);
      this.o3921 = null;
      this.display = null;
      this.o509 = null;
      this.entity = null;
   }
}

import flash.display.DisplayObject;

class o19566
{
    
   
   private var o3921:Object;
   
   private var display:DisplayObject;
   
   private var o509:DisplayObject;
   
   public var o352:int;
   
   public var o3081:Number;
   
   public var o20184:Number;
   
   private var o9325:int;
   
   function o19566(param1:Object, param2:DisplayObject, param3:DisplayObject, param4:int, param5:Number, param6:Number)
   {
      super();
      this.o3921 = param1;
      this.display = param2;
      this.o509 = param3;
      this.o352 = param4;
      this.o3081 = param5;
      this.o20184 = param6;
      param1.o16587.addChild(param2);
      param1.o16587.addChild(param3);
      o9325 = o1051.o4767(null,0.0333333333333333,o7658);
   }
   
   private function o7658() : void
   {
      o3921.o12029(display,o509,o3081,o20184);
   }
   
   public function o19115() : void
   {
      o1051.o19115(o9325);
      o3921.o16587.removeChild(display);
      o3921.o16587.removeChild(o509);
      this.o3921 = null;
      this.display = null;
      this.o509 = null;
   }
}
