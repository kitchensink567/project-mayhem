package
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class o12669 extends Sprite implements o10529
   {
       
      
      public var o20188:BitmapData = null;
      
      public var o4238:BitmapData = null;
      
      public var o20530:Bitmap = null;
      
      private var o5579:Point = null;
      
      public var o20380:Boolean = true;
      
      private var o2740:Dictionary;
      
      private var o6471:ColorTransform;
      
      private var o19404:Vector.<Number>;
      
      private var o6427:Dictionary;
      
      private var o465:Point;
      
      public function o12669()
      {
         o2740 = Mem.create(this,Dictionary);
         o6471 = new ColorTransform();
         o19404 = new Vector.<Number>();
         o6427 = new Dictionary();
         o465 = new Point(0,0);
         super();
         o5579 = Mem.create(this,Point);
      }
      
      public function initialise(param1:int, param2:int) : void
      {
         param1 = 800;
         param2 = 620;
         o20188 = Mem.create(this,BitmapData,[param1,param2]);
         o4238 = Mem.create(this,BitmapData,[param1,param2]);
         o20188.fillRect(o20188.rect,255);
         o4238.fillRect(o20188.rect,255);
         o20530 = Mem.create(this,Bitmap,[o20188]);
         addChild(o20530);
      }
      
      private function o3602(param1:Event) : void
      {
      }
      
      public function o3861(param1:BitmapData, param2:int, param3:int) : void
      {
         o2740[param2] = param1;
      }
      
      public function dispose(param1:int) : void
      {
         if(o2740[param1] != null)
         {
            o2740[param1].dispose();
            delete o2740[param1];
         }
      }
      
      public function o18113(param1:int) : void
      {
         if(o2740[param1] != null)
         {
            o2740[param1].fillRect(o2740[param1].rect,0);
         }
      }
      
      public function o14009(param1:int, param2:int) : void
      {
         param1 = 800;
         param2 = 620;
         o20188 = Mem.create(this,BitmapData,[param1,param2]);
         o4238 = Mem.create(this,BitmapData,[param1,param2]);
         o20188.fillRect(o20188.rect,255);
         o4238.fillRect(o20188.rect,255);
         o20530.bitmapData.dispose();
         o20530.bitmapData = o20188;
      }
      
      public function o6849(param1:o1885, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int, param11:Number, param12:Number, param13:Number, param14:Number, param15:Number, param16:Number, param17:Number) : void
      {
         var _loc18_:BitmapData = o2740[param2];
         var _loc21_:BitmapData = o2740[param10];
         var _loc19_:Number = this.o20188.width / param1.width;
         var _loc22_:Number = this.o20188.height / param1.height;
         var _loc20_:Matrix = Mem.create(this,Matrix);
         _loc20_.identity();
         _loc20_.translate(-param5,-param6);
         _loc20_.scale(_loc19_ / param7,_loc22_ / param8);
         _loc20_.rotate(param9);
         _loc20_.scale(1 / _loc19_,1 / _loc22_);
         _loc20_.translate(param3,param4);
         _loc20_.translate(-param11,-param12);
         _loc20_.translate(param13,param14);
         _loc20_.scale(_loc19_,_loc22_);
         _loc20_.scale(o493.o18249,o493.o18249);
         _loc21_.draw(_loc18_,_loc20_,null,null,null,o493.o16444);
      }
      
      public function o7879(param1:o1885, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int = 2, param11:Matrix3D = null, param12:Vector.<Number> = null, param13:int = 6) : void
      {
         if(o20380)
         {
            param1.x = int(param1.x);
            param1.y = int(param1.y);
            param5 = int(param5);
            param6 = int(param6);
            param3 = int(param3);
            param4 = int(param4);
         }
         else
         {
            param1.x = int(param1.x / 2) * 2;
            param1.y = int(param1.y / 2) * 2;
            param5 = int(param5 / 2) * 2;
            param6 = int(param6 / 2) * 2;
            param3 = int(param3 / 2) * 2;
            param4 = int(param4 / 2) * 2;
         }
         var _loc15_:BitmapData = o2740[param2];
         var _loc17_:* = 1;
         var _loc21_:* = 1;
         if(param7 == o493.o18249 && param8 == o493.o18249 && param9 == 0 && param11 == null && param12 == null && (param13 == 1 || param13 == 6))
         {
            o5579.x = int(-param5 + (param3 - param1.x) * o493.o18249);
            o5579.y = int(-param6 + (param4 - param1.y) * o493.o18249);
            this.o20188.copyPixels(_loc15_,_loc15_.rect,o5579,null,null,true);
            return;
         }
         var _loc16_:Number = param1.x + param1.width / 2 - param3;
         var _loc19_:Number = param1.y + param1.height / 2 - param4;
         if(_loc16_ * _loc16_ + _loc19_ * _loc19_ > 2250000)
         {
            return;
         }
         var _loc18_:Matrix = Mem.create(this,Matrix);
         _loc18_.identity();
         _loc18_.translate(-param5,-param6);
         _loc18_.scale(1 / param7,1 / param8);
         _loc18_.rotate(param9);
         _loc18_.translate(param3,param4);
         _loc18_.translate(-param1.x,-param1.y);
         _loc18_.scale(o493.o18249,o493.o18249);
         var _loc20_:ColorTransform = null;
         if(param11 != null || param12 != null)
         {
            _loc20_ = o6471;
            _loc20_.redMultiplier = 1;
            _loc20_.greenMultiplier = 1;
            _loc20_.blueMultiplier = 1;
            _loc20_.alphaMultiplier = 1;
            _loc20_.redOffset = 0;
            _loc20_.greenOffset = 0;
            _loc20_.blueOffset = 0;
            _loc20_.alphaOffset = 0;
         }
         if(param11 != null)
         {
            param11.copyRawDataTo(o19404);
            _loc20_.redMultiplier = o19404[0];
            _loc20_.greenMultiplier = o19404[5];
            _loc20_.blueMultiplier = o19404[10];
            _loc20_.alphaMultiplier = o19404[15];
            o19404.splice(0,4);
         }
         if(param12 != null)
         {
            _loc20_.redOffset = param12[0];
            _loc20_.greenOffset = param12[1];
            _loc20_.blueOffset = param12[2];
            _loc20_.alphaOffset = param12[3];
         }
         var _loc14_:String = null;
         if(param13 == 2 || param13 == 7)
         {
            _loc14_ = "add";
         }
         if(param13 == 9)
         {
            _loc14_ = "subtract";
         }
         this.o20188.draw(_loc15_,_loc18_,_loc20_,_loc14_,null,o493.o16444);
      }
      
      public function o17121(param1:o1885, param2:Vector.<o18509>, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int = 2, param11:Matrix3D = null, param12:Vector.<Number> = null, param13:int = 6) : void
      {
         var _loc15_:int = 0;
         if(o20380)
         {
            param3 = int(param3);
            param4 = int(param4);
         }
         var _loc17_:Sprite = o6427[param2];
         if(_loc17_ == null)
         {
            _loc17_ = new Sprite();
            _loc17_.graphics.beginFill(0,1);
            _loc17_.graphics.moveTo(param2[0].x,param2[0].y);
            _loc15_ = 1;
            while(_loc15_ < param2.length)
            {
               _loc17_.graphics.lineTo(param2[_loc15_].x,param2[_loc15_].y);
               _loc15_++;
            }
            _loc17_.graphics.lineTo(param2[0].x,param2[0].y);
            _loc17_.graphics.endFill();
            o6427[param2] = _loc17_;
         }
         var _loc16_:Number = this.o20188.width / param1.width;
         var _loc20_:Number = this.o20188.height / param1.height;
         var _loc18_:Matrix = Mem.create(this,Matrix);
         _loc18_.identity();
         _loc18_.translate(-param5,-param6);
         _loc18_.scale(_loc16_ / param7,_loc20_ / param8);
         _loc18_.rotate(param9);
         _loc18_.scale(1 / _loc16_,1 / _loc20_);
         _loc18_.translate(param3,param4);
         _loc18_.translate(-param1.x,-param1.y);
         _loc18_.scale(_loc16_,_loc20_);
         _loc18_.scale(o493.o18249,o493.o18249);
         var _loc19_:ColorTransform = null;
         if(param11 != null || param12 != null)
         {
            _loc19_ = o6471;
            _loc19_.redMultiplier = 1;
            _loc19_.greenMultiplier = 1;
            _loc19_.blueMultiplier = 1;
            _loc19_.alphaMultiplier = 1;
            _loc19_.redOffset = 0;
            _loc19_.greenOffset = 0;
            _loc19_.blueOffset = 0;
            _loc19_.alphaOffset = 0;
         }
         if(param11 != null)
         {
            param11.copyRawDataTo(o19404);
            _loc19_.redMultiplier = o19404[0];
            _loc19_.greenMultiplier = o19404[5];
            _loc19_.blueMultiplier = o19404[10];
            _loc19_.alphaMultiplier = o19404[15];
            o19404.splice(0,4);
         }
         if(param12 != null)
         {
            _loc19_.redOffset = param12[0];
            _loc19_.greenOffset = param12[1];
            _loc19_.blueOffset = param12[2];
            _loc19_.alphaOffset = param12[3];
         }
         var _loc14_:String = null;
         if(param13 == 2 || param13 == 7)
         {
            _loc14_ = "add";
         }
         else if(param13 == 9)
         {
            _loc14_ = "subtract";
         }
         this.o20188.draw(_loc17_,_loc18_,_loc19_,_loc14_,null,o493.o16444);
      }
      
      public function clear() : void
      {
         o20188.fillRect(o20188.rect,255);
      }
      
      public function o8846() : void
      {
         if(o8537.o9759)
         {
            o20188.copyPixels(o4238,o4238.rect,o465);
         }
      }
      
      public function end() : void
      {
      }
   }
}
