package
{
   import flash.utils.Dictionary;
   
   public class o14542
   {
      
      private static var o9457:Dictionary = new Dictionary();
       
      
      public function o14542()
      {
         super();
      }
      
      public static function get(param1:Class) : *
      {
         var _loc2_:o794 = o9457[param1];
         if(_loc2_ == null)
         {
            _loc2_ = new o794(param1);
            o9457[param1] = _loc2_;
         }
         return _loc2_.get();
      }
      
      public static function o13640(param1:*) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:o794 = o9457[Object(param1).constructor];
         if(_loc2_)
         {
            _loc2_.o13640(param1);
         }
      }
   }
}

class o794
{
   
   private static const o2266:int = 1000;
    
   
   private var o4771:Array;
   
   private var type:Class = null;
   
   function o794(param1:Class)
   {
      o4771 = [];
      super();
      this.type = param1;
   }
   
   public function get() : *
   {
      if(o4771.length > 0)
      {
         return o4771.pop();
      }
      return new type();
   }
   
   public function o13640(param1:*) : void
   {
      if(o4771.length <= 1000)
      {
         o4771.push(param1);
      }
   }
}
