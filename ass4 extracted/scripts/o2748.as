package
{
   use namespace b2internal;
   
   public class o2748
   {
      
      b2internal static const o327:int = 0;
      
      b2internal static const o17519:int = 1;
      
      b2internal static const o13259:int = 2;
      
      b2internal static const o6150:int = 3;
      
      b2internal static const o18530:int = 4;
      
      b2internal static const o20941:int = 5;
      
      b2internal static const o18766:int = 6;
      
      b2internal static const o784:int = 7;
      
      b2internal static const o12707:int = 8;
      
      b2internal static const o3452:int = 9;
      
      b2internal static const o14997:int = 0;
      
      b2internal static const o8651:int = 1;
      
      b2internal static const o9490:int = 2;
      
      b2internal static const o13349:int = 3;
       
      
      b2internal var o3804:int;
      
      b2internal var o3174:o2748;
      
      b2internal var o1570:o2748;
      
      b2internal var o16138:o20788;
      
      b2internal var o4583:o20788;
      
      b2internal var o8708:o5173;
      
      b2internal var o4919:o5173;
      
      b2internal var o6811:Boolean;
      
      b2internal var o1969:Boolean;
      
      private var o5958;
      
      b2internal var o16190:o20021;
      
      b2internal var o19100:o20021;
      
      b2internal var o20394:Number;
      
      b2internal var o19229:Number;
      
      b2internal var o7570:Number;
      
      b2internal var o4025:Number;
      
      public function o2748(param1:o18988)
      {
         o16138 = new o20788();
         o4583 = new o20788();
         o16190 = new o20021();
         o19100 = new o20021();
         super();
         o14980.o12199(param1.o6133 != param1.o3428);
         o3804 = param1.type;
         o3174 = null;
         o1570 = null;
         o8708 = param1.o6133;
         o4919 = param1.o3428;
         o1969 = param1.o16915;
         o6811 = false;
         o5958 = param1.o18152;
      }
      
      b2internal static function o6611(param1:o18988, param2:*) : o2748
      {
         var _loc3_:o2748 = null;
         switch(int(param1.type) - 1)
         {
            case 0:
               _loc3_ = new o9718(param1 as o8078);
               break;
            case 1:
               _loc3_ = new o3919(param1 as o1228);
               break;
            case 2:
               _loc3_ = new o2228(param1 as o12221);
               break;
            case 3:
               _loc3_ = new o12525(param1 as o5146);
               break;
            case 4:
               _loc3_ = new o17056(param1 as o12838);
               break;
            case 5:
               _loc3_ = new o2178(param1 as o12495);
               break;
            case 6:
               _loc3_ = new o15506(param1 as o12643);
               break;
            case 7:
               _loc3_ = new o13063(param1 as o957);
               break;
            case 8:
               _loc3_ = new o10292(param1 as o11737);
         }
         return _loc3_;
      }
      
      b2internal static function o18143(param1:o2748, param2:*) : void
      {
      }
      
      public function o20697() : int
      {
         return o3804;
      }
      
      public function o17339() : o20021
      {
         return null;
      }
      
      public function o5566() : o20021
      {
         return null;
      }
      
      public function o917(param1:Number) : o20021
      {
         return null;
      }
      
      public function o18986(param1:Number) : Number
      {
         return 0;
      }
      
      public function o1670() : o5173
      {
         return o8708;
      }
      
      public function o4568() : o5173
      {
         return o4919;
      }
      
      public function o10535() : o2748
      {
         return o1570;
      }
      
      public function o3272() : *
      {
         return o5958;
      }
      
      public function o7620(param1:*) : void
      {
         o5958 = param1;
      }
      
      public function o20329() : Boolean
      {
         return o8708.o20329() && o4919.o20329();
      }
      
      b2internal function o8745(param1:o18851) : void
      {
      }
      
      b2internal function o13623(param1:o18851) : void
      {
      }
      
      b2internal function o17728() : void
      {
      }
      
      b2internal function o18754(param1:Number) : Boolean
      {
         return false;
      }
   }
}
