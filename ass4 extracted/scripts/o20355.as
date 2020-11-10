package
{
   import avmplus.getQualifiedClassName;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.filters.BlurFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   
   public class o20355
   {
       
      
      public function o20355()
      {
         super();
      }
      
      public static function o11365(param1:DisplayObject, param2:uint, param3:Number) : void
      {
         var _loc4_:ColorTransform = new ColorTransform();
         var _loc5_:* = 1 - param3;
         _loc4_.blueMultiplier = _loc5_;
         _loc5_ = _loc5_;
         _loc4_.greenMultiplier = _loc5_;
         _loc4_.redMultiplier = _loc5_;
         _loc4_.redOffset = Math.round(((param2 & 16711680) >> 16) * param3);
         _loc4_.greenOffset = Math.round(((param2 & 65280) >> 8) * param3);
         _loc4_.blueOffset = Math.round((param2 & 255) * param3);
         param1.transform.colorTransform = _loc4_;
      }
      
      public static function o18084(param1:Object, param2:int = 0) : Object
      {
         var _loc4_:* = null;
         if(!param1)
         {
            return param1;
         }
         if(param1 is int || param1 is uint || param1 is Number || param1 is String || param1 is Boolean || param1 is Class)
         {
            return param1;
         }
         var _loc3_:Object = new (getDefinitionByName(getQualifiedClassName(param1)) as Class)();
         if(getQualifiedClassName(param1).indexOf("__AS3__.vec::Vector.<") == 0 || getQualifiedClassName(param1).indexOf("Array") != -1)
         {
            var _loc8_:int = 0;
            var _loc7_:* = param1;
            for each(var _loc5_ in param1)
            {
               _loc3_.push(o18084(_loc5_,1));
            }
         }
         else
         {
            var _loc10_:int = 0;
            var _loc9_:* = describeType(param1).variable;
            for each(var _loc6_ in describeType(param1).variable)
            {
               _loc4_ = _loc6_.attribute("name");
               _loc3_[_loc4_] = o18084(param1[_loc4_],1);
            }
            var _loc12_:int = 0;
            var _loc11_:* = describeType(param1).accessor;
            for each(_loc6_ in describeType(param1).accessor)
            {
               _loc4_ = _loc6_.attribute("name");
               _loc3_[_loc4_] = o18084(param1[_loc4_],1);
            }
         }
         return _loc3_;
      }
      
      public static function o3935(param1:DisplayObject, param2:Number) : void
      {
         var _loc6_:int = 0;
         var _loc4_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc5_:* = null;
         if(isFinite(param2) == false)
         {
            return;
         }
         var _loc3_:Array = o18084(param1.filters) as Array;
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
   }
}
