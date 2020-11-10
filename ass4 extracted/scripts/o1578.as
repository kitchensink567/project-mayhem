package
{
   import avmplus.getQualifiedClassName;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   
   public class o1578
   {
       
      
      public var o10398:Boolean = true;
      
      private var o7800:Dictionary;
      
      public function o1578()
      {
         o7800 = new Dictionary();
         super();
      }
      
      public function o11961(param1:Class, param2:Array = null) : o5304
      {
         var _loc3_:* = null;
         if(!o10398)
         {
            return null;
         }
         if(param2 == null)
         {
            param2 = [];
         }
         if(o7800[param1] == null)
         {
            o7800[param1] = new Vector.<o5304>();
         }
         if(o7800[param1].length == 0)
         {
            _loc3_ = new param1();
            Object(_loc3_).o16677.apply(null,param2);
            return _loc3_;
         }
         _loc3_ = o7800[param1].pop();
         Object(_loc3_).o1666.apply(null,param2);
         return _loc3_;
      }
      
      public function o11882(param1:o5304) : void
      {
         var _loc2_:Class = Class(getDefinitionByName(getQualifiedClassName(param1)));
         o7800[_loc2_].push(param1);
      }
      
      public function clear() : void
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o7800;
         for each(var _loc1_ in o7800)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc1_[_loc2_].o19115();
               _loc2_++;
            }
            _loc1_.splice(0,4294967295);
         }
         o7800 = new Dictionary();
      }
   }
}
