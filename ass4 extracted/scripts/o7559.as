package
{
   import flash.geom.Point;
   
   public class o7559
   {
      
      private static var o6081:o7559;
       
      
      public var o16350:String;
      
      public var o16002:Array;
      
      public var o17172:Array;
      
      public function o7559(param1:String, param2:Array, param3:Array)
      {
         super();
         this.o16350 = param1;
         this.o16002 = param2;
         this.o17172 = param3;
      }
      
      public static function get o4121() : o7559
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(o6081 == null)
         {
            _loc3_ = 256;
            _loc1_ = [2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,0,2.7,2.5,2.3,2.5,2.3,2.5,2.6,2.6,2.2,2,2.2,2.5,2.3,2.5,2,2.7,2.4,2.5,2.6,2.3,2.7,2.7,2.3,2.7,2.5,2.5,2.5,2.3,2.3,2.4,2.5,2.6,2,2.9,2.5,2.9,2.9,2.9,2.5,2.9,2.9,2,2.9,2.9,3,2.9,2.5,2.9,2.5,2.9,2.5,2,2.8,2,3.6,2,2,2.4,2.9,2.1,2,2.1,1.9,2.6,2.6,2.8,2.4,2.5,2.4,2.4,2.5,2.8,2.8,1.8,2.8,2.8,3.4,2.8,2.4,2.8,2.5,2.8,2.5,2.4,2.8,2,2,2,2,2.5,2.5,2.1,3.1,2.1,2.3,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5,2.5];
            _loc2_ = [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,0,4,7,9,8,10,9,4,5,5,7,8,5,7,5,7,8,5,8,7,9,7,7,8,7,8,5,5,7,8,7,7,11,9,8,8,8,7,7,8,8,4,6,8,7,9,9,9,8,9,8,8,9,8,9,12,9,9,9,5,7,5,8,8,4,7,8,7,8,8,7,8,7,4,5,7,4,10,7,8,8,8,6,7,7,7,8,11,8,8,7,7,7,4,7,9,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7];
            _loc2_[31] = 10;
            o6081 = new o7559("assets.font.playerName",_loc1_,_loc2_);
         }
         return o6081;
      }
      
      public function create(param1:String, param2:Point) : o16518
      {
         var _loc3_:o16518 = new o16518(this,param2);
         _loc3_.text = param1;
         return _loc3_;
      }
   }
}
