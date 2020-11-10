package
{
   public class o5146 extends o18988
   {
       
      
      public var o4120:o20021;
      
      public var o16046:o20021;
      
      public var o7423:o20021;
      
      public var o20551:o20021;
      
      public var o2507:Number;
      
      public var o1328:Number;
      
      public var o18450:Number;
      
      public var o12776:Number;
      
      public var o6425:Number;
      
      public function o5146()
      {
         o4120 = new o20021();
         o16046 = new o20021();
         o7423 = new o20021();
         o20551 = new o20021();
         super();
         type = 4;
         o4120.o18596(-1,1);
         o16046.o18596(1,1);
         o7423.o18596(-1,0);
         o20551.o18596(1,0);
         o2507 = 0;
         o1328 = 0;
         o18450 = 0;
         o12776 = 0;
         o6425 = 1;
         o16915 = true;
      }
      
      public function o3836(param1:o5173, param2:o5173, param3:o20021, param4:o20021, param5:o20021, param6:o20021, param7:Number) : void
      {
         o6133 = param1;
         o3428 = param2;
         o4120.o13101(param3);
         o16046.o13101(param4);
         o7423 = o6133.o962(param5);
         o20551 = o3428.o962(param6);
         var _loc12_:Number = param5.x - param3.x;
         var _loc8_:Number = param5.y - param3.y;
         o2507 = Math.sqrt(_loc12_ * _loc12_ + _loc8_ * _loc8_);
         var _loc9_:Number = param6.x - param4.x;
         var _loc11_:Number = param6.y - param4.y;
         o18450 = Math.sqrt(_loc9_ * _loc9_ + _loc11_ * _loc11_);
         o6425 = param7;
         var _loc10_:Number = o2507 + o6425 * o18450;
         o1328 = _loc10_ - o6425 * 2;
         o12776 = (_loc10_ - 2) / o6425;
      }
   }
}
