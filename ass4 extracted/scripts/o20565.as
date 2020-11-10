package
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class o20565
   {
       
      
      private var o12565:o16681;
      
      public function o20565(param1:o16681)
      {
         super();
         this.o12565 = param1;
      }
      
      public function o13640() : void
      {
         o12565 = null;
      }
      
      public function o17578(param1:String, param2:DisplayObjectContainer = null, param3:Boolean = true) : o15625
      {
         var _loc4_:* = null;
         var _loc5_:MovieClip = null;
         if(param2 == null)
         {
            _loc5_ = o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc5_ = param2.getChildByName(param1) as MovieClip;
         }
         if(_loc5_ != null)
         {
            _loc4_ = new o15625();
            _loc4_.init(_loc5_);
            o12565.o5452(_loc4_);
            return _loc4_;
         }
         if(param3 == false)
         {
            throw new Error("button " + param1 + " not found");
         }
         return null;
      }
      
      public function o14346(param1:String, param2:DisplayObjectContainer = null, param3:Boolean = true) : o12671
      {
         var _loc4_:* = null;
         var _loc5_:MovieClip = null;
         if(param2 == null)
         {
            _loc5_ = o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc5_ = param2.getChildByName(param1) as MovieClip;
         }
         if(_loc5_ != null)
         {
            _loc4_ = new o12671();
            _loc4_.init(_loc5_);
            o12565.o5452(_loc4_);
            return _loc4_;
         }
         if(param3 == false)
         {
            throw new Error("button " + param1 + " not found");
         }
         return null;
      }
      
      public function o15961(param1:String, param2:String = null, param3:DisplayObjectContainer = null, param4:Boolean = false) : o12290
      {
         var _loc5_:* = null;
         var _loc6_:MovieClip = null;
         if(param3 == null)
         {
            _loc6_ = o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc6_ = param3.getChildByName(param1) as MovieClip;
         }
         if(_loc6_ != null)
         {
            _loc5_ = new o12290();
            _loc5_.init(_loc6_);
            if(param2 != null)
            {
               _loc5_.o13586 = param2;
            }
            o12565.o5452(_loc5_);
            return _loc5_;
         }
         if(param4 == false)
         {
            throw new Error("button " + param1 + " not found");
         }
         return null;
      }
      
      public function o8759(param1:String, param2:String = null, param3:MovieClip = null, param4:DisplayObjectContainer = null, param5:Boolean = false) : o8535
      {
         var _loc6_:* = null;
         var _loc7_:MovieClip = null;
         if(param4 == null)
         {
            _loc7_ = o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc7_ = param4.getChildByName(param1) as MovieClip;
         }
         if(_loc7_ != null)
         {
            _loc6_ = new o8535();
            _loc6_.init(_loc7_);
            if(param2 != null)
            {
               _loc6_.o13586 = param2;
            }
            if(param3 != null)
            {
               _loc6_.o3700 = param3;
            }
            o12565.o5452(_loc6_);
            return _loc6_;
         }
         if(param5 == false)
         {
            throw new Error("button " + param1 + " not found");
         }
         return null;
      }
      
      public function o3538(param1:Array) : o20421
      {
         var _loc3_:o20421 = new o20421();
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc3_.o14435(_loc2_);
         }
         o12565.o5452(_loc3_);
         return _loc3_;
      }
      
      public function o4085(param1:o15625, param2:o15625, param3:Array) : o5414
      {
         var _loc5_:o5414 = new o5414(param1,param2);
         var _loc7_:int = 0;
         var _loc6_:* = param3;
         for each(var _loc4_ in param3)
         {
            _loc5_.o14435(_loc4_);
         }
         o12565.o5452(_loc5_);
         return _loc5_;
      }
      
      public function o17506(param1:String, param2:String, param3:DisplayObjectContainer = null) : void
      {
         var _loc4_:TextField = null;
         if(param3 == null)
         {
            _loc4_ = this.o12565.asset.getChildByName(param1) as TextField;
         }
         else
         {
            _loc4_ = param3.getChildByName(param1) as TextField;
         }
         if(param2 == null)
         {
            throw new Error("setTextFieldLabel(): Null label");
         }
         if(_loc4_ != null && _loc4_.htmlText != param2)
         {
            _loc4_.htmlText = param2;
         }
      }
      
      public function o4482(param1:String, param2:String, param3:DisplayObjectContainer = null) : void
      {
         var _loc4_:* = null;
         if(param3 == null)
         {
            _loc4_ = this.o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc4_ = param3.getChildByName(param1) as MovieClip;
         }
         if(_loc4_ == null)
         {
            throw new Error("Unable to find instance named " + param1);
         }
         _loc4_.gotoAndStop(param2);
      }
      
      public function o13240(param1:String, param2:Boolean, param3:DisplayObjectContainer = null) : void
      {
         var _loc4_:* = null;
         if(param3 == null)
         {
            _loc4_ = this.o12565.asset.getChildByName(param1) as MovieClip;
         }
         else
         {
            _loc4_ = param3.getChildByName(param1) as MovieClip;
         }
         if(_loc4_ != null)
         {
            _loc4_.visible = param2;
         }
      }
      
      public function o13962(param1:String, param2:int, param3:int, param4:String, param5:String, param6:DisplayObjectContainer = null) : void
      {
         var _loc7_:* = 0;
         _loc7_ = 0;
         while(_loc7_ < param2)
         {
            o4482(param1 + _loc7_,param4,param6);
            _loc7_++;
         }
         _loc7_ = param2;
         while(_loc7_ < param3)
         {
            o4482(param1 + _loc7_,param5,param6);
            _loc7_++;
         }
      }
      
      public function o5877(param1:String, param2:int, param3:int, param4:String, param5:String, param6:int, param7:DisplayObjectContainer = null) : void
      {
         var _loc8_:* = 0;
         _loc8_ = 0;
         while(_loc8_ < param2)
         {
            o4482(param1 + _loc8_,param4,param7);
            _loc8_++;
         }
         _loc8_ = param2;
         while(_loc8_ < param3)
         {
            o4482(param1 + _loc8_,param5,param7);
            _loc8_++;
         }
         _loc8_ = 0;
         while(_loc8_ < param3)
         {
            o13240(param1 + _loc8_,true,param7);
            _loc8_++;
         }
         _loc8_ = param3;
         while(_loc8_ < param6)
         {
            o13240(param1 + _loc8_,false,param7);
            _loc8_++;
         }
      }
      
      public function o17043(param1:String, param2:DisplayObjectContainer = null) : Vector.<DisplayObject>
      {
         if(param2 == null)
         {
            param2 = o12565.asset;
         }
         var _loc5_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = param2.getChildByName(param1 + _loc3_);
         while(_loc4_ != null)
         {
            _loc5_.push(_loc4_);
            _loc3_++;
            _loc4_ = param2.getChildByName(param1 + _loc3_);
         }
         return _loc5_;
      }
      
      public function o3870(param1:o15625, param2:o15625, param3:Vector.<o15625>, param4:Function, param5:MovieClip = null) : o10832
      {
         var _loc7_:o10832 = new o10832();
         _loc7_.o16384(param1,param2,param3.length,param4,param5);
         var _loc9_:int = 0;
         var _loc8_:* = param3;
         for each(var _loc6_ in param3)
         {
            _loc7_.o14435(_loc6_);
         }
         o12565.o5452(_loc7_);
         return _loc7_;
      }
      
      public function o4245(param1:String, param2:DisplayObjectContainer = null) : o5024
      {
         if(param2 == null)
         {
            param2 = this.o12565.asset;
         }
         var _loc3_:o5024 = new o5024();
         _loc3_.init(param2.getChildByName(param1) as MovieClip);
         o12565.o5452(_loc3_);
         return _loc3_;
      }
   }
}
