package
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class o493 extends o8023 implements o14727
   {
      
      public static var o18249:Number = 1;
      
      public static var o16444:Boolean = true;
       
      
      private var o1234:o7118 = null;
      
      private var o19332:Vector.<Array>;
      
      private var o19519:Function;
      
      private var o307:int = 0;
      
      private var o13432:Dictionary;
      
      private var o1173:Dictionary;
      
      private var o19382:Array;
      
      private var o465:Point;
      
      private var o2592:Dictionary;
      
      private var container:MovieClip;
      
      public function o493()
      {
         o19332 = Mem.create(this,Vector.<Array>);
         o13432 = Mem.create(this,Dictionary);
         o1173 = Mem.create(this,Dictionary);
         o19382 = [];
         o465 = new Point();
         o2592 = new Dictionary();
         container = new MovieClip();
         super();
         o4519.stage.addEventListener("enterFrame",frame);
      }
      
      public function get o12322() : int
      {
         return o19382.length;
      }
      
      public function get o2026() : int
      {
         return o307;
      }
      
      public function frame(param1:Event = null) : void
      {
         var _loc2_:int = getTimer();
         while(o19382.length > 0)
         {
            o1809();
            o307 = Number(o307) + 1;
            if(getTimer() - _loc2_ <= (!!o4519.o13206.o9745?15:30))
            {
               continue;
            }
            break;
         }
      }
      
      public function set o16316(param1:Function) : void
      {
         o19519 = param1;
      }
      
      public function o18219(param1:o3135, param2:Dictionary) : void
      {
         loader = param1;
         o9122 = param2;
         this.o1234 = Mem.create(this,o20211,[loader,o9122]);
         o1234.o16280(this,o11719.o5422,function(param1:o17437):void
         {
            var _loc2_:Vector.<Array> = Mem.create(this,Vector.<Array>);
            var _loc6_:int = 0;
            var _loc5_:* = o19332;
            for each(var _loc4_ in o19332)
            {
               if(_loc4_[0] == param1.id)
               {
                  o12118(param1.asset,_loc4_[1].assetID,_loc4_[1].frame,_loc4_[1].scaleX,_loc4_[1].scaleY,_loc4_[1].x,_loc4_[1].y,_loc4_[1].width,_loc4_[1].height);
                  _loc2_.push(_loc4_);
               }
            }
            var _loc8_:int = 0;
            var _loc7_:* = _loc2_;
            for each(var _loc3_ in _loc2_)
            {
               o19332.splice(o19332.indexOf(_loc3_),1);
            }
         });
      }
      
      public function o13252(param1:*, param2:int = 1, param3:Number = 1, param4:Number = 1, param5:Number = 0, param6:Number = 0, param7:int = 0, param8:int = 0) : void
      {
         if(param1 is String)
         {
            o19332.push([param1,{
               "assetID":param1,
               "frame":param2,
               "scaleX":param3,
               "scaleY":param4,
               "x":param5,
               "y":param6,
               "width":param7,
               "height":param8
            }]);
            o1234.o11358(param1);
         }
         else if(param1 is ByteArray)
         {
         }
      }
      
      public function o14068() : void
      {
         o19382 = [];
         o307 = 0;
      }
      
      private function o12118(param1:*, param2:String, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:int) : void
      {
         o19382.push([param1,param2,param3,param4,param5,param6,param7,param8,param9]);
      }
      
      private function o1809() : void
      {
         var _loc1_:Array = o19382.shift();
         o12623(_loc1_[0],_loc1_[1],_loc1_[2],_loc1_[3],_loc1_[4],_loc1_[5],_loc1_[6],_loc1_[7],_loc1_[8]);
      }
      
      private function o12623(param1:*, param2:String, param3:int, param4:Number, param5:Number, param6:Number, param7:Number, param8:int, param9:int) : void
      {
         var _loc14_:* = null;
         var _loc15_:DisplayObject = null;
         var _loc16_:Boolean = false;
         if(param1 is Class)
         {
            if(o1173[param1])
            {
               _loc15_ = o1173[param1];
            }
            else
            {
               _loc15_ = new param1();
               _loc16_ = o5773.o17544(_loc15_);
               if(!_loc16_)
               {
                  o1173[param1] = _loc15_;
               }
            }
         }
         else
         {
            _loc15_ = param1;
         }
         param4 = param4 * o18249;
         param5 = param5 * o18249;
         _loc15_.scaleX = param4;
         _loc15_.scaleY = param5;
         if(_loc15_ is MovieClip)
         {
            (_loc15_ as MovieClip).gotoAndStop(param3);
         }
         o5773.o9980(_loc15_);
         o5773.o9481(_loc15_);
         container.addChild(_loc15_);
         var _loc12_:Rectangle = container.getBounds(container);
         _loc12_.x = Math.round(_loc12_.x);
         _loc12_.y = Math.round(_loc12_.y);
         var _loc11_:o18509 = Mem.create(this,o18509,[-_loc12_.x - param6 * param4,-_loc12_.y - param7 * param4]);
         var _loc10_:BitmapData = null;
         if(_loc12_.width == 0)
         {
            param8 = 2;
            param9 = 2;
         }
         if(_loc10_ == null)
         {
            try
            {
               if(param8 == 0)
               {
                  _loc10_ = Mem.create(this,BitmapData,[Math.ceil(_loc12_.width),Math.ceil(_loc12_.height)]);
               }
               else
               {
                  _loc10_ = Mem.create(this,BitmapData,[Math.ceil(param8 * param4),Math.ceil(param9 * param5)]);
               }
            }
            catch(o19631:Error)
            {
               throw new Error("getTextureReadyFromQue: " + param2 + ", " + param8.toString() + ", " + param9.toString() + "," + _loc12_.toString() + ", " + param4.toString() + "," + param5.toString());
            }
            _loc10_.fillRect(_loc10_.rect,0);
            _loc14_ = Mem.create(this,Matrix);
            _loc14_.identity();
            _loc14_.translate(_loc11_.x - _loc15_.x,_loc11_.y - _loc15_.y);
            if(_loc16_)
            {
               o5773.o3935(_loc15_,param4);
            }
            _loc10_.draw(container,_loc14_);
         }
         var _loc13_:o551 = Mem.create(this,o551) as o551;
         _loc13_.initialise(param2 != null?param2:_loc15_,param3,_loc10_.width,_loc10_.height,_loc11_.x,_loc11_.y,param4,param5,param6,param7,param8,param9,_loc10_);
         dispatchData(_loc13_);
         container.removeChild(_loc15_);
         _loc15_.scaleX = 1;
         _loc15_.scaleY = 1;
      }
      
      public function o2336() : void
      {
         var o9878:Array = [];
         var _loc3_:int = 0;
         var _loc2_:* = o2592;
         for(o16350 in o2592)
         {
            var size:int = 0;
            var o1903:int = 0;
            while(o1903 < o2592[o16350].length)
            {
               size = size + o2592[o16350][o1903][1];
               o1903 = o1903 + 1;
            }
            o9878.push([o16350,size]);
         }
         o9878 = o9878.sort(function(param1:Array, param2:Array):int
         {
            if(param1[1] > param2[1])
            {
               return -1;
            }
            if(param1[1] < param2[1])
            {
               return 1;
            }
            return 0;
         });
         o1903 = 0;
         while(o1903 < o9878.length)
         {
            o8339(o9878[o1903][0],(Number(o9878[o1903][1] / 1024 / 1024)).toFixed(2),"mb");
            o1903 = o1903 + 1;
         }
      }
      
      public function o6972(param1:DisplayObject, param2:Number, param3:Number, param4:int, param5:int) : void
      {
      }
      
      public function o11980(param1:Number) : void
      {
         o493.o18249 = param1;
      }
      
      public function o19078(param1:String) : void
      {
      }
   }
}
