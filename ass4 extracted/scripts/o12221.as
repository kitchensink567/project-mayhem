package
{
   public class o12221 extends o18988
   {
       
      
      public var o7423:o20021;
      
      public var o20551:o20021;
      
      public var length:Number;
      
      public var o15425:Number;
      
      public var o12647:Number;
      
      public function o12221()
      {
         o7423 = new o20021();
         o20551 = new o20021();
         super();
         type = 3;
         length = 1;
         o15425 = 0;
         o12647 = 0;
      }
      
      public function o3836(param1:o5173, param2:o5173, param3:o20021, param4:o20021) : void
      {
         o6133 = param1;
         o3428 = param2;
         o7423.o13101(o6133.o962(param3));
         o20551.o13101(o3428.o962(param4));
         var _loc6_:Number = param4.x - param3.x;
         var _loc5_:Number = param4.y - param3.y;
         length = Math.sqrt(_loc6_ * _loc6_ + _loc5_ * _loc5_);
         o15425 = 0;
         o12647 = 0;
      }
   }
}
