package
{
   import flash.utils.Dictionary;
   
   public class o159
   {
       
      
      private var o17073:Dictionary;
      
      public function o159()
      {
         o17073 = new Dictionary();
         super();
      }
      
      public function o8087(param1:int) : o16124
      {
         if(o17073[param1] != null)
         {
            return o17073[param1];
         }
         var _loc4_:o16124 = new o16124();
         o17073[param1] = _loc4_;
         var _loc3_:String = o4519.o8116.o7484 + "maps/" + param1 + ".bin" + "?devV=" + new Date().time.toString();
         _loc3_ = o4519.o8116.o7484 + "maps/" + param1 + ".bin" + "?v=" + o9609.o12834.toString();
         var _loc2_:o1359 = new o1359(_loc4_);
         o4519.o8116.loader.o17485(_loc3_).defer(_loc2_.o5111);
         return _loc4_;
      }
   }
}

import flash.utils.ByteArray;

class o1359
{
    
   
   public var promise:o16124;
   
   function o1359(param1:o16124)
   {
      super();
      this.promise = param1;
   }
   
   public function o5111(param1:ByteArray) : void
   {
      var _loc2_:o8621 = new o8621();
      _loc2_.load(param1);
      promise.data = _loc2_;
   }
}
