package
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.utils.Dictionary;
   
   public class o5773
   {
       
      
      public function o5773()
      {
         super();
      }
      
      public static function o7903(param1:Dictionary) : int
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc4_:* = param1;
         for(var _loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function o13199(param1:DisplayObject) : BitmapData
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc6_:* = undefined;
         var _loc3_:* = null;
         if(param1 is Shape)
         {
            _loc2_ = param1 as Shape;
            _loc6_ = _loc2_.graphics["readGraphicsData"](false);
            var _loc8_:int = 0;
            var _loc7_:* = _loc6_;
            for each(var _loc5_ in _loc6_)
            {
               if(_loc5_.hasOwnProperty("bitmapData"))
               {
                  _loc4_ = _loc5_.bitmapData;
                  return _loc4_;
               }
            }
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = param1 as DisplayObjectContainer;
            if(_loc3_.numChildren == 1)
            {
               _loc4_ = o13199(_loc3_.getChildAt(0));
               if(_loc4_ != null)
               {
                  return _loc4_;
               }
            }
         }
         return null;
      }
      
      public static function o17544(param1:DisplayObject) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         if(param1.filters && param1.filters.length > 0)
         {
            return true;
         }
         var _loc4_:Boolean = false;
         if(param1 is DisplayObjectContainer)
         {
            _loc2_ = param1 as DisplayObjectContainer;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.numChildren)
            {
               _loc4_ = o17544(_loc2_.getChildAt(_loc3_));
               if(_loc4_)
               {
                  return true;
               }
               _loc3_++;
            }
         }
         return false;
      }
      
      public static function o3935(param1:DisplayObject, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc5_:* = null;
         var _loc3_:Array = param1.filters.concat();
         _loc6_ = 0;
         while(_loc6_ < param1.filters.length)
         {
            if(param1.filters[_loc6_] is DropShadowFilter)
            {
               _loc4_ = _loc3_[_loc6_] as DropShadowFilter;
               _loc4_.blurX = _loc4_.blurX * param2;
               _loc4_.blurY = _loc4_.blurY * param2;
               _loc4_.distance = _loc4_.distance * param2;
            }
            else if(param1.filters[_loc6_] is BlurFilter)
            {
               _loc8_ = _loc3_[_loc6_] as BlurFilter;
               _loc8_.blurX = _loc8_.blurX * param2;
               _loc8_.blurY = _loc8_.blurY * param2;
            }
            else if(param1.filters[_loc6_] is GlowFilter)
            {
               _loc7_ = _loc3_[_loc6_] as GlowFilter;
               _loc7_.blurX = _loc7_.blurX * param2;
               _loc7_.blurY = _loc7_.blurY * param2;
            }
            _loc6_++;
         }
         if(param1.filters.length > 0)
         {
            param1.filters = _loc3_;
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc5_ = param1 as DisplayObjectContainer;
            _loc6_ = 0;
            while(_loc6_ < _loc5_.numChildren)
            {
               o3935(_loc5_.getChildAt(_loc6_),param2);
               _loc6_++;
            }
         }
      }
      
      public static function o9980(param1:DisplayObject) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         if(param1 is MovieClip)
         {
            (param1 as MovieClip).stop();
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = param1 as DisplayObjectContainer;
            _loc2_ = 0;
            while(_loc2_ < _loc3_.numChildren)
            {
               o9980(_loc3_.getChildAt(_loc2_));
               _loc2_++;
            }
         }
      }
      
      public static function o9481(param1:DisplayObject) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = param1 as DisplayObjectContainer;
            _loc2_ = 0;
            while(_loc2_ < _loc3_.numChildren)
            {
               o9481(_loc3_.getChildAt(_loc2_));
               _loc2_++;
            }
         }
      }
      
      public static function o10403(param1:Number) : String
      {
         var _loc4_:String = "";
         if(int(param1 / 3600) > 0)
         {
            _loc4_ = _loc4_ + (int(param1 / 3600) + ":");
         }
         var _loc2_:String = String(int(param1 / 60 % 60));
         if(_loc2_.length != 2)
         {
            _loc2_ = "0" + _loc2_;
         }
         _loc4_ = _loc4_ + (_loc2_ + ":");
         var _loc3_:String = String(int(param1 % 60));
         if(_loc3_.length != 2)
         {
            _loc3_ = "0" + _loc3_;
         }
         _loc4_ = _loc4_ + _loc3_;
         return _loc4_;
      }
      
      public static function getServerTime() : o16124
      {
         var _loc1_:o16124 = new o16124();
         _loc1_.data = new Date();
         return _loc1_;
      }
   }
}
