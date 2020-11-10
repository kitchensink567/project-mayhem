package
{
   public class o5072
   {
       
      
      public var start:Date = null;
      
      public var end:Date = null;
      
      public function o5072(param1:String, param2:String)
      {
         super();
         if(param1 != null)
         {
            start = o20696(param1);
         }
         if(param2 != null)
         {
            end = o20696(param2);
         }
      }
      
      public function o18084() : o5072
      {
         var _loc1_:o5072 = new o5072(null,null);
         _loc1_.start = new Date(start.time);
         _loc1_.end = new Date(end.time - 60);
         return _loc1_;
      }
      
      public function get o13779() : Boolean
      {
         if(o4519.o8116.o15020 == null)
         {
            return false;
         }
         if(start.getTime() <= o4519.o8116.o15020.getTime() && end.getTime() >= o4519.o8116.o15020.getTime())
         {
            return true;
         }
         return false;
      }
      
      public function o4574(param1:Date) : Boolean
      {
         var _loc2_:Number = param1.time;
         if(_loc2_ >= start.getTime() && _loc2_ <= end.getTime())
         {
            return true;
         }
         return false;
      }
      
      public function o7237() : Boolean
      {
         if(o4519.o8116.o15020 == null)
         {
            return false;
         }
         return end.getTime() >= o4519.o8116.o15020.getTime();
      }
      
      public function o5337() : int
      {
         var _loc3_:int = o4519.o8116.o15020.getTime();
         var _loc1_:int = end.getTime();
         var _loc2_:int = _loc1_ - _loc3_;
         return _loc2_;
      }
      
      private function o20696(param1:String) : Date
      {
         var _loc2_:Array = param1.split(" ").join("-").split(":").join("-").split("-");
         return new Date(Date.UTC(Number(_loc2_[0]),_loc2_[1] - 1,_loc2_[2],_loc2_[3],_loc2_[4],_loc2_[5]));
      }
   }
}
