package
{
   import flash.utils.Dictionary;
   
   public class o16062
   {
       
      
      public var o14399:Vector.<o6882>;
      
      public var o16679:Vector.<o19173>;
      
      public var o2416:Vector.<o3241>;
      
      public var o15026:o16373;
      
      public var o15128:o5307;
      
      public var o9392:o1611;
      
      public var o9095:o4233;
      
      public var o15115:o2524;
      
      public var o5215:o5263;
      
      public var o13988:Vector.<o11614>;
      
      public var o7205:Dictionary;
      
      public function o16062()
      {
         o14399 = new Vector.<o6882>();
         o16679 = new Vector.<o19173>();
         o2416 = new Vector.<o3241>();
         o15026 = new o16373();
         o13988 = new Vector.<o11614>();
         super();
      }
      
      public function o3413(param1:int) : o638
      {
         return o7205[param1] as o638;
      }
      
      public function o15751() : Vector.<o19173>
      {
         var _loc2_:Vector.<o19173> = new Vector.<o19173>();
         var _loc4_:int = 0;
         var _loc3_:* = o16679;
         for each(var _loc1_ in o16679)
         {
            if(_loc1_.type == 0 && _loc1_.o5897.o13779)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
   }
}
