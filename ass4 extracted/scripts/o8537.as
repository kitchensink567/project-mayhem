package
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Matrix3D;
   import flash.utils.Dictionary;
   
   public class o8537 extends Sprite implements Scene
   {
      
      public static var o9759:Boolean = true;
       
      
      private var o7483:o19786 = null;
      
      private var o13048:o12669 = null;
      
      private var o4476:o1885 = null;
      
      private var o6041:Dictionary = null;
      
      private var o4801:Vector.<o8986#835>;
      
      private var textures:Dictionary = null;
      
      private var o7844:Dictionary = null;
      
      private var o20478:Dictionary = null;
      
      private var o6828:Dictionary = null;
      
      private var o9878:Dictionary = null;
      
      private var o16268:Dictionary = null;
      
      private var o11443:Dictionary = null;
      
      private var o14306:Dictionary = null;
      
      private var o1536:Dictionary = null;
      
      private var o5120:Dictionary = null;
      
      private var o16094:Boolean = true;
      
      private var o2358:Dictionary;
      
      public var o6690:o8986#835 = null;
      
      private var o19575:uint = 0;
      
      private var o20917:uint = 0;
      
      public var o5194:Dictionary;
      
      private var o19280:int = 0;
      
      private var o19927:uint = 0;
      
      private var o15110:uint = 0;
      
      private var o19289:uint = 0;
      
      private var o15796:uint = 0;
      
      private var o16645:uint = 0;
      
      private var o16970:uint = 0;
      
      private var o13546:uint = 0;
      
      private var o5690:uint = 0;
      
      private var o12917:uint = 0;
      
      private var o2154:o12600;
      
      public function o8537()
      {
         o4801 = Mem.create(this,Vector.<o8986#835>);
         o2358 = Mem.create(this,Dictionary);
         o5194 = Mem.create(this,Dictionary);
         o2154 = Mem.create(this,o8023);
         super();
         addEventListener("addedToStage",o4464);
      }
      
      public function initialise(param1:int, param2:int) : void
      {
         o7483 = Mem.create(this,o19786);
         o13048 = Mem.create(this,o12669);
         o6041 = Mem.create(this,Dictionary);
         textures = Mem.create(this,Dictionary);
         o7844 = Mem.create(this,Dictionary);
         o20478 = Mem.create(this,Dictionary);
         o6828 = Mem.create(this,Dictionary);
         o9878 = Mem.create(this,Dictionary);
         o16268 = Mem.create(this,Dictionary);
         o11443 = Mem.create(this,Dictionary);
         o14306 = Mem.create(this,Dictionary);
         o1536 = Mem.create(this,Dictionary);
         o5120 = Mem.create(this,Dictionary);
         o4801 = Mem.create(this,Vector.<o8986#835>);
         o7483.initialise(param1,param2,stage);
         o13048.initialise(param1,param2);
         stage.addChild(o13048);
         stage.addEventListener("enterFrame",o2727);
         stage.addEventListener("resize",o5986);
      }
      
      public function set o9116(param1:Boolean) : void
      {
         o16094 = param1;
      }
      
      public function get o9116() : Boolean
      {
         return o16094;
      }
      
      public function get o10237() : o10529
      {
         if(o9116)
         {
            if(o7483.o5418)
            {
               return o7483;
            }
            return o13048;
         }
         return o13048;
      }
      
      public function clear() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = textures;
         for each(var _loc1_ in textures)
         {
            if(textures[_loc1_] != null)
            {
               if(o7483.o5418)
               {
                  o7483.dispose(textures[_loc1_]);
               }
               else
               {
                  o13048.dispose(textures[_loc1_]);
               }
               textures[_loc1_].dispose();
            }
         }
         o6041 = Mem.create(this,Dictionary);
         textures = Mem.create(this,Dictionary);
         o7844 = Mem.create(this,Dictionary);
         o20478 = Mem.create(this,Dictionary);
         o6828 = Mem.create(this,Dictionary);
         o9878 = Mem.create(this,Dictionary);
         o16268 = Mem.create(this,Dictionary);
         o11443 = Mem.create(this,Dictionary);
         o14306 = Mem.create(this,Dictionary);
         o1536 = Mem.create(this,Dictionary);
         o5120 = Mem.create(this,Dictionary);
         o4801 = Mem.create(this,Vector.<o8986#835>);
         o13048.clear();
         o6690 = null;
      }
      
      public function o19115() : void
      {
         o15777(o14571.o19115);
      }
      
      public function o2727(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc9_:Number = NaN;
         var _loc8_:* = null;
         var _loc6_:* = null;
         var _loc2_:* = null;
         var _loc5_:* = null;
         var _loc11_:* = null;
         var _loc4_:* = undefined;
         var _loc7_:* = undefined;
         o13048.visible = o10237 is o12669;
         o13048.scaleX = 1 / o493.o18249;
         o13048.scaleY = 1 / o493.o18249;
         o13048.o20380 = o493.o18249 == 1;
         if(o4519.o13206)
         {
            o4519.o13206.o8858(null);
         }
         o10237.o8846();
         if(o6690 != null && o4476 != null && o7844[o6690.position] != null)
         {
            o4476.x = o7844[o6690.position].x - o4476.width * 0.5;
            o4476.y = o7844[o6690.position].y - o4476.height * 0.5;
         }
         var _loc13_:int = 0;
         var _loc12_:* = o4801;
         for each(var _loc10_ in o4801)
         {
            if(_loc10_.visible)
            {
               _loc3_ = o7844[_loc10_.position];
               if(_loc3_)
               {
                  if(_loc3_.type == 1)
                  {
                     _loc3_.o3246();
                  }
                  _loc9_ = o20478[_loc10_.rotation];
                  _loc8_ = o11443[_loc10_.o5398];
                  if(_loc8_ != null)
                  {
                     _loc6_ = o6828[_loc8_.o8270];
                     _loc2_ = o9878[_loc8_.scale];
                     _loc5_ = o14306[_loc10_.scale];
                     _loc11_ = null;
                     if(_loc10_.colorTransform > 0)
                     {
                        _loc11_ = o1536[_loc10_.colorTransform];
                     }
                     _loc4_ = null;
                     if(_loc10_.o12020 > 0)
                     {
                        _loc4_ = o5120[_loc10_.o12020];
                     }
                     if(textures[_loc8_.o16396] != null)
                     {
                        o10237.o7879(o4476,textures[_loc8_.o16396],_loc3_.x,_loc3_.y,_loc6_.x,_loc6_.y,_loc2_.x / _loc5_.x,_loc2_.y / _loc5_.y,_loc9_,o5194[_loc8_.o16396],_loc11_,_loc4_,_loc10_.o2158);
                     }
                     else
                     {
                        _loc7_ = o16268[_loc8_.o16528];
                        if(_loc7_ != null)
                        {
                           o10237.o17121(o4476,_loc7_,_loc3_.x,_loc3_.y,_loc6_.x,_loc6_.y,_loc5_.x,_loc5_.y,_loc9_,2,_loc11_,_loc4_,_loc10_.o2158);
                        }
                     }
                  }
               }
            }
         }
         o10237.end();
      }
      
      public function o6849(param1:uint, param2:uint) : void
      {
         var _loc7_:o8986 = o6041[param1];
         if(_loc7_ == null)
         {
            return;
         }
         var _loc13_:o2415 = o7844[_loc7_.position];
         var _loc12_:Number = o20478[_loc7_.rotation];
         var _loc5_:o15318 = o11443[_loc7_.o5398];
         if(_loc5_ == null)
         {
            return;
         }
         var _loc15_:o18509 = o6828[_loc5_.o8270];
         var _loc3_:o18509 = o9878[_loc5_.scale];
         var _loc4_:o18509 = o14306[_loc7_.scale];
         if(textures[_loc5_.o16396] == null)
         {
            return;
         }
         var _loc14_:o8986 = o6041[param2];
         if(_loc14_ == null)
         {
            return;
         }
         var _loc8_:o2415 = o7844[_loc14_.position];
         var _loc16_:Number = o20478[_loc14_.rotation];
         var _loc10_:o15318 = o11443[_loc14_.o5398];
         if(_loc10_ == null)
         {
            return;
         }
         var _loc6_:o18509 = o6828[_loc10_.o8270];
         var _loc11_:o18509 = o9878[_loc10_.scale];
         var _loc9_:o18509 = o14306[_loc14_.scale];
         if(textures[_loc10_.o16396] == null)
         {
            return;
         }
         o10237.o6849(o4476,textures[_loc5_.o16396],_loc13_.x,_loc13_.y,_loc15_.x,_loc15_.y,_loc3_.x / _loc4_.x,_loc3_.y / _loc4_.y,_loc12_,textures[_loc10_.o16396],_loc8_.x,_loc8_.y,_loc6_.x,_loc6_.y,_loc11_.x / _loc11_.x,_loc11_.y / _loc9_.y,_loc16_);
      }
      
      private function o12672(param1:o8986#835, param2:Boolean = true) : o2415
      {
         return o7844[param1.position];
      }
      
      private function o4464(param1:Event) : void
      {
         initialise(stage.stageWidth,stage.stageHeight);
         removeEventListener("addedToStage",o4464);
      }
      
      private function o5986(param1:Event) : void
      {
         o7779(stage.stageWidth,stage.stageHeight);
         dispatchData(Mem.create(this,o13144,[800,620]));
      }
      
      public function o7779(param1:Number, param2:Number) : void
      {
         param1 = 800;
         param2 = 620;
         o13048.o14009(param1,param2);
         if(o7483 != null && o7483.o5418)
         {
            o7483.o14009(param1,param2);
         }
      }
      
      public function o14352(param1:o1885) : void
      {
         o4476 = param1;
      }
      
      public function o2286(param1:uint) : void
      {
         o6690 = o6041[param1];
      }
      
      public function o20264() : uint
      {
         o19575 = Number(o19575) + 1;
         var _loc1_:o8986 = Mem.create(this,o8986#835);
         o6041[o19575] = _loc1_;
         o4801.push(_loc1_);
         return o19575;
      }
      
      public function o14252(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.o5398 = param2;
      }
      
      public function o5747(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         _loc3_.position = param2;
      }
      
      public function o12537(param1:uint, param2:Number) : void
      {
         var _loc5_:int = 0;
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         _loc3_.o1546 = param2;
         o4801.splice(o4801.indexOf(_loc3_),1);
         var _loc4_:int = o4801.length;
         var _loc6_:Boolean = false;
         _loc5_ = 0;
         while(_loc5_ < _loc4_)
         {
            if(_loc3_.o1546 < o4801[_loc5_].o1546)
            {
               o4801.splice(_loc5_,0,_loc3_);
               _loc6_ = true;
               break;
            }
            _loc5_++;
         }
         if(!_loc6_)
         {
            o4801.push(_loc3_);
         }
      }
      
      public function o4393(param1:uint, param2:Boolean) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         _loc3_.visible = param2;
      }
      
      public function o1598(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.rotation = param2;
      }
      
      public function o14023(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.scale = param2;
      }
      
      public function o19987(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.colorTransform = param2;
      }
      
      public function o14097(param1:uint, param2:uint) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.o12020 = param2;
      }
      
      public function o17063(param1:uint, param2:int) : void
      {
         var _loc3_:o8986 = o6041[param1] as o8986#835;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.o2158 = param2;
      }
      
      public function o12797(param1:uint) : void
      {
         var _loc2_:o8986 = o6041[param1];
         delete o6041[param1];
         var _loc3_:int = o4801.indexOf(_loc2_);
         if(_loc3_ != -1)
         {
            o4801.splice(_loc3_,1);
         }
      }
      
      public function createTexture() : uint
      {
         o20917 = Number(o20917) + 1;
         textures[o20917] = null;
         return o20917;
      }
      
      public function o5339(param1:uint, param2:int, param3:int, param4:BitmapData, param5:int) : void
      {
         var _loc6_:* = param4;
         o5194[param1] = param5;
         if(textures[param1] != null)
         {
            o17778(param1);
         }
         o19280 = Number(o19280) + 1;
         var _loc7_:int = Number(o19280);
         textures[param1] = _loc7_;
         o10237.o3861(_loc6_,_loc7_,2);
      }
      
      public function o18113(param1:uint) : void
      {
         var _loc3_:o8986 = o6041[param1];
         if(_loc3_ == null)
         {
            return;
         }
         var _loc2_:o15318 = o11443[_loc3_.o5398];
         o10237.o18113(textures[_loc2_.o16396]);
      }
      
      public function o17778(param1:uint) : void
      {
         if(textures[param1] == null)
         {
            return;
         }
         o10237.dispose(textures[param1]);
         §§push(delete textures[param1]);
      }
      
      public function o3294() : uint
      {
         o19927 = Number(o19927) + 1;
         o7844[o19927] = null;
         return o19927;
      }
      
      public function o8564(param1:uint, param2:*) : void
      {
         if(o7844[param1] != null)
         {
            o7844[param1].o19115();
            o7844[param1] = null;
         }
         o7844[param1] = param2;
      }
      
      public function o19503() : uint
      {
         o15110 = Number(o15110) + 1;
         o20478[o15110] = 0;
         return o15110;
      }
      
      public function o16687(param1:uint, param2:Number) : void
      {
         o20478[param1] = param2;
      }
      
      public function o16167() : uint
      {
         o19289 = Number(o19289) + 1;
         o14306[o19289] = Mem.create(this,o18509,[1,1]);
         return o19289;
      }
      
      public function o3845(param1:uint, param2:Number, param3:Number) : void
      {
         o14306[param1].x = param2;
         o14306[param1].y = param3;
      }
      
      public function o13969() : uint
      {
         o15796 = Number(o15796) + 1;
         o1536[o15796] = null;
         return o15796;
      }
      
      public function o8862(param1:uint, param2:Vector.<Number>) : void
      {
         var _loc3_:* = null;
         if(param2 != null)
         {
            if(o1536[param1] == null)
            {
               o1536[param1] = new Matrix3D();
            }
            _loc3_ = o1536[param1];
            _loc3_.copyRawDataFrom(param2);
         }
         else
         {
            o1536[param1] = null;
         }
      }
      
      public function o10249() : uint
      {
         o16645 = Number(o16645) + 1;
         o5120[o16645] = null;
         return o16645;
      }
      
      public function o17377(param1:uint, param2:Vector.<Number>) : void
      {
         if(param2 != null)
         {
            o5120[param1] = Vector.<Number>([param2[0] * 255,param2[1] * 255,param2[2] * 255,param2[3] * 255]);
         }
         else
         {
            o5120[param1] = Vector.<Number>([0,0,0,0]);
         }
      }
      
      public function o19803() : uint
      {
         o16970 = Number(o16970) + 1;
         o6828[o16970] = null;
         return o16970;
      }
      
      public function o7155(param1:uint, param2:Number, param3:Number) : void
      {
         o6828[param1] = Mem.create(this,o18509,[param2,param3]);
      }
      
      public function o11419() : uint
      {
         o13546 = Number(o13546) + 1;
         o9878[o13546] = null;
         return o13546;
      }
      
      public function o2661(param1:uint, param2:Number, param3:Number) : void
      {
         o9878[param1] = Mem.create(this,o18509,[param2,param3]);
      }
      
      public function o15364(param1:uint, param2:Boolean) : void
      {
         o6041[param1].o18280 = param2;
      }
      
      public function o10937() : uint
      {
         o5690 = Number(o5690) + 1;
         o16268[o5690] = null;
         return o5690;
      }
      
      public function o17673(param1:uint, param2:Vector.<o18509>) : void
      {
         o16268[param1] = param2;
      }
      
      public function o4505() : uint
      {
         o12917 = Number(o12917) + 1;
         var _loc1_:o15318 = Mem.create(this,o15318);
         o11443[o12917] = _loc1_;
         return o12917;
      }
      
      public function o6455(param1:uint, param2:uint) : void
      {
         var _loc3_:o15318 = o11443[param1] as o15318;
         _loc3_.o16396 = param2;
      }
      
      public function o4631(param1:uint, param2:uint) : void
      {
         var _loc3_:o15318 = o11443[param1] as o15318;
         _loc3_.o16528 = param2;
      }
      
      public function o17501(param1:uint, param2:uint) : void
      {
         var _loc3_:o15318 = o11443[param1] as o15318;
         _loc3_.o8270 = param2;
      }
      
      public function o12611(param1:uint, param2:uint) : void
      {
         var _loc3_:o15318 = o11443[param1] as o15318;
         _loc3_.scale = param2;
      }
      
      public function o15777(param1:int) : void
      {
         o2154.o15777(param1);
      }
      
      public function dispatchData(param1:Event) : void
      {
         o2154.dispatchData(param1);
      }
      
      public function o16280(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o16280(o2154,param2,param3);
      }
      
      public function o19926(param1:o12600, param2:int, param3:Function) : void
      {
         o2154.o19926(param1,param2,param3);
      }
      
      public function o12657(param1:int, param2:Function) : void
      {
         o2154.o12657(param1,param2);
      }
      
      public function o8289() : Boolean
      {
         return o2154.o8289();
      }
      
      public function get o3062() : Boolean
      {
         return o7483.o5418;
      }
   }
}

class o8986#835
{
    
   
   public var o5398:uint = 0;
   
   public var position:uint = 0;
   
   private var o4634:Number = 0;
   
   public var rotation:uint = 0;
   
   public var scale:uint = 0;
   
   public var o18280:Boolean = false;
   
   public var colorTransform:uint = 0;
   
   public var o12020:uint = 0;
   
   public var o2158:int = 6;
   
   public var visible:Boolean = true;
   
   function o8986#835()
   {
      super();
   }
   
   public function get o1546() : Number
   {
      return o4634;
   }
   
   public function set o1546(param1:Number) : void
   {
      o4634 = param1;
   }
}

class o15318
{
    
   
   public var o16396:uint = 0;
   
   public var o16528:uint = 0;
   
   public var o8270:uint = 0;
   
   public var scale:uint = 0;
   
   function o15318()
   {
      super();
   }
}
