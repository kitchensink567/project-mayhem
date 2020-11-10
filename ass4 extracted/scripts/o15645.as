package
{
   public class o15645
   {
       
      
      public var id:int = -1;
      
      public var o17977:String;
      
      public var o4705:String;
      
      public var o8398:String;
      
      public var o7219:String;
      
      public var o12043:String;
      
      private var o11254:Vector.<o15787>;
      
      private var o6499:Vector.<o15787>;
      
      public var o6086:Vector.<int> = null;
      
      private var o13793:Vector.<o16123>;
      
      public var o17593:int;
      
      private var o2490:o16123;
      
      private const o11731:int = 600;
      
      private const o17140:int = 1200;
      
      private const o7130:int = 5;
      
      private const o14262:int = 200;
      
      private const o15271:int = 150;
      
      private const o17489:int = 160;
      
      private const o18973:int = -40;
      
      private const o12938:int = 60;
      
      public function o15645()
      {
         o17977 = "";
         o4705 = "";
         o8398 = "";
         o7219 = "";
         o12043 = "";
         o11254 = new Vector.<o15787>();
         o6499 = new Vector.<o15787>();
         o13793 = new Vector.<o16123>();
         o2490 = new o16123(0);
         super();
      }
      
      public function get o10387() : int
      {
         return o2490.value;
      }
      
      public function set o10387(param1:int) : void
      {
         o2490.value = param1;
      }
      
      public function get o20851() : Boolean
      {
         return o6499.length > 0 || o13793.length > 0;
      }
      
      public function o20054(param1:Number) : void
      {
         var _loc2_:o15787 = new o15787(param1);
         _loc2_.value = param1;
         o6499.push(_loc2_);
      }
      
      public function o9475() : int
      {
         return o6499.length;
      }
      
      public function o6328(param1:int) : Number
      {
         if(param1 >= o6499.length)
         {
            return 1;
         }
         return o6499[param1].value;
      }
      
      public function o14387(param1:Number) : void
      {
         var _loc2_:o15787 = new o15787(param1);
         _loc2_.value = param1;
         o11254.push(_loc2_);
      }
      
      public function o17436() : int
      {
         return o11254.length;
      }
      
      public function o1072(param1:int) : Number
      {
         if(param1 >= o11254.length)
         {
            return 0;
         }
         return o11254[param1].value;
      }
      
      public function o907(param1:int) : void
      {
         var _loc2_:o16123 = new o16123(param1);
         _loc2_.value = param1;
         o13793.push(_loc2_);
      }
      
      public function o12258() : int
      {
         return o13793.length;
      }
      
      public function o9111(param1:Boolean, param2:int, param3:int, param4:Boolean, param5:int = 0, param6:int = 0) : int
      {
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc8_:int = 0;
         var _loc7_:int = 0;
         switch(int(param3) - 3)
         {
            case 0:
               if(param2 == 1)
               {
                  _loc10_ = 0;
               }
               else
               {
                  if(param1 && param2 == 2)
                  {
                     if(param6 >= o13793.length)
                     {
                        _loc10_ = 0;
                     }
                     _loc10_ = int(o13793[param6 + 1].value);
                  }
                  if(param6 >= o13793.length)
                  {
                     _loc10_ = 0;
                  }
                  else
                  {
                     _loc10_ = int(o13793[param6].value);
                  }
               }
               break;
            case 1:
               _loc8_ = o3412(param2,param6);
               _loc9_ = param5;
               if(_loc9_ >= 1200)
               {
                  _loc9_ = 1200;
               }
               _loc10_ = int((_loc9_ * 160 / (_loc9_ + 150) + -40) * _loc8_);
               if(_loc10_ > 1200)
               {
                  _loc10_ = 1200;
               }
               break;
            case 2:
               _loc10_ = param5;
               break;
            default:
               _loc10_ = 0;
               break;
            case 4:
               _loc8_ = o3412(param2,param6);
               if(param5 != 0)
               {
                  _loc7_ = Math.ceil(param5 / 200);
               }
               _loc10_ = int(_loc8_ * _loc7_);
         }
         return _loc10_;
      }
      
      public function o3412(param1:int, param2:int) : int
      {
         switch(int(param1) - 1)
         {
            case 0:
               return 1;
            case 1:
               switch(int(param2))
               {
                  case 0:
                     return 7;
                  case 1:
                     return 4;
               }
            case 2:
               switch(int(param2))
               {
                  case 0:
                     return 10;
                  case 1:
                     return 6;
                  case 2:
                     return 5;
               }
            case 3:
               switch(int(param2))
               {
                  case 0:
                     return 12;
                  case 1:
                     return 7;
                  case 2:
                     return 5;
                  case 3:
                     return 5;
               }
         }
      }
   }
}
