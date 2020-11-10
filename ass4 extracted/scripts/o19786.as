package
{
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.display3D.textures.Texture;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   public class o19786 implements o10529
   {
      
      public static const o18778:Vector.<Number> = Vector.<Number>([0,0,0,0]);
       
      
      public var o5418:Boolean = false;
      
      private var o11563:Context3D = null;
      
      private var o17720:Program3D = null;
      
      private var o4201:IndexBuffer3D = null;
      
      private var o2717:VertexBuffer3D = null;
      
      private var o4472:Dictionary = null;
      
      private var o17505:Dictionary = null;
      
      private var o19725:Dictionary = null;
      
      private var width:int = 800;
      
      private var height:int = 600;
      
      private var o10207:Boolean = false;
      
      private var o9619:int = 2048;
      
      public var o13879:Boolean = false;
      
      public var o10503:Boolean = false;
      
      private var o15093:Matrix3D = null;
      
      private var o1280:int = 0;
      
      private var o8092:Dictionary;
      
      private var o19043:Dictionary;
      
      private var o13274:o18509;
      
      private var o5721:Texture = null;
      
      public function o19786()
      {
         o8092 = Mem.create(this,Dictionary);
         o19043 = Mem.create(this,Dictionary);
         o13274 = Mem.create(this,o18509);
         super();
         o4472 = Mem.create(this,Dictionary);
         o17505 = Mem.create(this,Dictionary);
         o19725 = Mem.create(this,Dictionary);
      }
      
      public static function o4012(param1:Number) : Number
      {
         return Math.pow(2,Math.ceil(Math.log(param1) / Math.log(2)));
      }
      
      public function initialise(param1:int, param2:int, param3:Stage) : void
      {
         this.width = param1;
         this.height = param2;
      }
      
      public function o18113(param1:int) : void
      {
      }
      
      private function o18856(param1:Event) : void
      {
         var _loc2_:Stage3D = param1.target as Stage3D;
         o11563 = _loc2_.context3D;
         if(o11563.driverInfo == "software" || o11563.driverInfo.toLowerCase().indexOf("software") != -1)
         {
            o5418 = false;
            return;
         }
      }
      
      public function o6849(param1:o1885, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int, param11:Number, param12:Number, param13:Number, param14:Number, param15:Number, param16:Number, param17:Number) : void
      {
      }
      
      private function o10631(param1:BitmapData) : VertexBuffer3D
      {
         return o2717;
      }
      
      private function o5943(param1:Vector.<o18509>) : VertexBuffer3D
      {
         return null;
      }
      
      private function o13252(param1:BitmapData, param2:int) : Texture
      {
         var _loc4_:String = "bgra";
         switch(int(param2))
         {
            case 0:
               _loc4_ = "bgrPacked565";
               break;
            case 1:
               _loc4_ = "bgraPacked4444";
               break;
            case 2:
               _loc4_ = "bgra";
         }
         var _loc3_:Texture = o11563.createTexture(param1.rect.width,param1.rect.height,_loc4_,false);
         _loc3_.uploadFromBitmapData(param1);
         o8092[_loc3_] = param1.rect.width * param1.rect.height * 4;
         o19043[_loc3_] = new o18509(param1.rect.width,param1.rect.height);
         param1.dispose();
         o20377();
         return _loc3_;
      }
      
      public function o20377() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc5_:* = o8092;
         for each(var _loc4_ in o8092)
         {
            _loc3_ = _loc3_ + _loc4_;
            _loc1_++;
         }
         var _loc2_:Number = _loc3_ / 1024 / 1024;
      }
      
      public function o3861(param1:BitmapData, param2:int, param3:int) : void
      {
         o15871(param1,param2,param3);
         param1.dispose();
      }
      
      private function o15871(param1:BitmapData, param2:int, param3:int) : o15461
      {
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc14_:int = 0;
         var _loc4_:int = 0;
         var _loc9_:int = 0;
         var _loc12_:int = 0;
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc8_:o15461 = Mem.create(this,o15461);
         var _loc13_:Number = o4012(param1.rect.width);
         var _loc6_:Number = o4012(param1.rect.height);
         if(_loc13_ <= o9619 && _loc6_ <= o9619 && _loc13_ == param1.rect.width && _loc6_ == param1.rect.height)
         {
            _loc10_ = o10631(param1);
            _loc11_ = o13252(param1,param3);
            _loc8_.add(_loc11_,_loc10_,Mem.create(this,o18509));
            o19725[param2] = _loc8_;
            return _loc8_;
         }
         _loc14_ = 0;
         while(_loc14_ < _loc6_)
         {
            _loc4_ = o4012(_loc6_ - _loc14_);
            if(_loc4_ > o9619)
            {
               _loc4_ = o9619;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc13_)
            {
               _loc12_ = o4012(_loc13_ - _loc9_);
               if(_loc12_ > o9619)
               {
                  _loc12_ = o9619;
               }
               _loc7_ = Mem.create(this,BitmapData,[_loc12_,_loc4_]);
               _loc7_.fillRect(_loc7_.rect,0);
               _loc5_ = Mem.create(this,Matrix);
               _loc5_.translate(-_loc9_,-_loc14_);
               _loc7_.draw(param1,_loc5_);
               _loc10_ = o10631(_loc7_);
               _loc11_ = o13252(_loc7_,param3);
               _loc7_.dispose();
               _loc8_.add(_loc11_,_loc10_,Mem.create(this,o18509,[_loc9_,_loc14_]));
               _loc9_ = _loc9_ + _loc12_;
            }
            _loc14_ = _loc14_ + _loc4_;
         }
         o19725[param2] = _loc8_;
         return _loc8_;
      }
      
      public function o11102(param1:int) : void
      {
         switch(int(param1))
         {
            case 0:
               o11563.setBlendFactors("one","zero");
               break;
            case 1:
               o11563.setBlendFactors("sourceAlpha","oneMinusSourceAlpha");
               break;
            case 2:
               o11563.setBlendFactors("sourceAlpha","destinationAlpha");
               break;
            case 3:
               o11563.setBlendFactors("destinationColor","oneMinusSourceAlpha");
               break;
            case 4:
               o11563.setBlendFactors("sourceAlpha","one");
               break;
            case 5:
               o11563.setBlendFactors("zero","oneMinusSourceAlpha");
               break;
            case 6:
               o11563.setBlendFactors("one","oneMinusSourceAlpha");
               break;
            case 7:
               o11563.setBlendFactors("one","one");
               break;
            case 8:
               o11563.setBlendFactors("one","oneMinusSourceColor");
         }
      }
      
      public function o7879(param1:o1885, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int = 2, param11:Matrix3D = null, param12:Vector.<Number> = null, param13:int = 6) : void
      {
         var _loc15_:int = 0;
         var _loc20_:* = null;
         var _loc19_:* = null;
         var _loc14_:* = null;
         var _loc18_:* = null;
         var _loc16_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc21_:* = NaN;
         if(!o5418 || !o10207)
         {
            return;
         }
         o11102(param13);
         var _loc17_:o15461 = o19725[param2];
         _loc15_ = 0;
         while(_loc15_ < _loc17_.o13700.length)
         {
            _loc20_ = _loc17_.o6828[_loc15_];
            _loc19_ = _loc17_.o1280[_loc15_];
            _loc14_ = _loc17_.o13700[_loc15_];
            if(_loc14_ != null)
            {
               _loc18_ = o15460.o16092;
               _loc18_.identity();
               _loc16_ = width / param1.width;
               _loc23_ = height / param1.height;
               _loc18_.appendScale(o19043[_loc14_].x,o19043[_loc14_].y,1);
               _loc18_.appendTranslation(-param5,-param6,0);
               _loc18_.appendTranslation(_loc20_.x,_loc20_.y,0);
               _loc18_.appendScale(_loc16_ / param7,_loc23_ / param8,1);
               _loc18_.appendRotation(param9 / 3.14159265358979 * 180,Vector3D.Z_AXIS);
               _loc22_ = Number(1 / (width / param1.width));
               _loc21_ = Number(1 / (height / param1.height));
               if(_loc22_ == 0)
               {
                  _loc22_ = 1;
               }
               if(_loc21_ == 0)
               {
                  _loc21_ = 1;
               }
               _loc18_.appendScale(_loc22_,_loc21_,1);
               _loc18_.appendTranslation(param3,param4,0);
               _loc18_.appendTranslation(-param1.x,-param1.y,0);
               _loc18_.appendScale(width / param1.width,height / param1.height,1);
               _loc18_.appendTranslation(-width / 2,-height / 2,0);
               _loc18_.appendScale(1 / width * 2,-1 / height * 2,1);
               o11563.setVertexBufferAt(0,_loc19_,0,"float3");
               o11563.setVertexBufferAt(1,_loc19_,3,"float2");
               o11563.setTextureAt(0,_loc14_);
               o11563.setProgramConstantsFromMatrix("vertex",0,_loc18_,true);
               o11563.setProgramConstantsFromMatrix("fragment",0,param11 != null?param11:o15093,true);
               o11563.setProgramConstantsFromVector("fragment",4,param12 != null?param12:o18778);
               o11563.drawTriangles(o4201);
            }
            _loc15_++;
         }
      }
      
      public function o17121(param1:o1885, param2:Vector.<o18509>, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int = 2, param11:Matrix3D = null, param12:Vector.<Number> = null, param13:int = 6) : void
      {
         var _loc17_:* = null;
         if(!o5418 || !o10207)
         {
            return;
         }
         o11102(param13);
         if(o5721 == null)
         {
            _loc17_ = Mem.create(this,BitmapData,[2,2]);
            _loc17_.fillRect(_loc17_.rect,4278190080);
            o5721 = o13252(_loc17_,2);
         }
         var _loc19_:o18509 = o13274;
         var _loc18_:VertexBuffer3D = o5943(param2);
         var _loc14_:Texture = o5721;
         var _loc16_:Matrix3D = o15460.o16092;
         _loc16_.identity();
         var _loc15_:Number = width / param1.width;
         var _loc22_:Number = height / param1.height;
         _loc16_.appendTranslation(-param5,-param6,0);
         _loc16_.appendTranslation(_loc19_.x,_loc19_.y,0);
         _loc16_.appendScale(_loc15_ / param7,_loc22_ / param8,1);
         _loc16_.appendRotation(param9 / 3.14159265358979 * 180,Vector3D.Z_AXIS);
         var _loc21_:* = Number(1 / (width / param1.width));
         var _loc20_:* = Number(1 / (height / param1.height));
         if(_loc21_ == 0)
         {
            _loc21_ = 1;
         }
         if(_loc20_ == 0)
         {
            _loc20_ = 1;
         }
         _loc16_.appendScale(_loc21_,_loc20_,1);
         _loc16_.appendTranslation(param3,param4,0);
         _loc16_.appendTranslation(-param1.x,-param1.y,0);
         _loc16_.appendScale(width / param1.width,height / param1.height,1);
         _loc16_.appendTranslation(-width / 2,-height / 2,0);
         _loc16_.appendScale(1 / width * 2,-1 / height * 2,1);
         o11563.setVertexBufferAt(0,_loc18_,0,"float3");
         o11563.setVertexBufferAt(1,_loc18_,3,"float2");
         o11563.setTextureAt(0,_loc14_);
         o11563.setProgramConstantsFromMatrix("vertex",0,_loc16_,true);
         o11563.setProgramConstantsFromMatrix("fragment",0,param11 != null?param11:o15093,true);
         o11563.setProgramConstantsFromVector("fragment",4,param12 != null?param12:o18778);
         o11563.drawTriangles(o17505[param2]);
      }
      
      public function o14009(param1:int, param2:int) : void
      {
         this.width = param1;
         this.height = param2;
         o11563.configureBackBuffer(param1,param2 + 20,0,false);
      }
      
      public function dispose(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         var _loc2_:* = null;
         var _loc5_:o15461 = o19725[param1];
         _loc4_ = 0;
         while(_loc4_ < _loc5_.o13700.length)
         {
            _loc3_ = _loc5_.o1280[_loc4_];
            if(_loc3_ != this.o2717)
            {
               o1280 = Number(o1280) - 1;
               _loc3_.dispose();
            }
            _loc2_ = _loc5_.o13700[_loc4_];
            if(_loc2_ != null)
            {
               _loc2_.dispose();
               delete o8092[_loc2_];
               delete o19043[_loc2_];
            }
            o20377();
            _loc4_++;
         }
      }
      
      public function o8846() : void
      {
         if(!o5418 || !o10207)
         {
            return;
         }
         o11563.clear(0,0,0);
         o11563.setProgram(o17720);
      }
      
      public function end() : void
      {
         if(!o5418 || !o10207)
         {
            return;
         }
         o11563.present();
      }
   }
}
