package
{
   public class o7126 implements o12420
   {
      
      private static const scale:int = 0;
      
      private static const add:int = 1;
      
      private static const o3512:int = 2;
       
      
      public var parent:o12420 = null;
      
      private var o17656:Vector.<o2347> = null;
      
      public var o15956:o15787;
      
      public function o7126(param1:o12420, param2:Vector.<o2347>, param3:Number)
      {
         o15956 = new o15787(0);
         super();
         this.parent = param1;
         this.o17656 = param2;
         this.o15956.value = param3;
      }
      
      public function get o15192() : Number
      {
         return this.o15956.value;
      }
      
      public function o13435(param1:int) : Number
      {
         switch(int(param1) - 13)
         {
            case 0:
               return parent.o5822;
            case 1:
               return parent.o16041;
            case 2:
               return parent.o5317;
            case 3:
               return parent.energy;
            case 4:
               return parent.o11243;
            case 5:
               return parent.o1937;
            case 6:
               return parent.o8514;
            case 7:
               return parent.o331;
            case 8:
               return parent.o15818;
            case 9:
               return parent.o10720;
            case 10:
               return 0;
            case 11:
               return parent.o5725;
            case 12:
               return parent.o20957;
         }
      }
      
      private function o485(param1:int) : Number
      {
         var _loc8_:* = null;
         var _loc6_:Number = o13435(param1);
         var _loc3_:Number = _loc6_ * o15192;
         var _loc5_:Number = _loc6_ + _loc3_;
         var _loc2_:* = 0;
         _loc2_ = Number(o4519.o8116.profileData.o5292.o4032[o20559]);
         var _loc4_:int = -1;
         var _loc10_:int = 0;
         var _loc9_:* = o17656;
         for each(_loc8_ in o17656)
         {
            if(param1 == _loc8_.type)
            {
               if(_loc4_ != -1)
               {
                  throw new Error("Augment grade already set");
               }
               _loc4_ = _loc8_.grade;
               _loc5_ = _loc5_ * _loc8_.o18619;
            }
         }
         if(_loc4_ == -1)
         {
            _loc4_ = 0;
         }
         var _loc7_:Number = _loc5_ + _loc4_ * _loc2_;
         return _loc7_;
      }
      
      public function o7431(param1:int) : Number
      {
         var _loc5_:* = null;
         var _loc4_:Number = o13435(param1);
         var _loc3_:* = _loc4_;
         var _loc2_:int = 0;
         var _loc6_:* = param1;
         switch(_loc6_)
         {
            case 21:
               _loc2_ = 1;
               break;
            case 16:
               _loc2_ = 2;
               break;
            case 17:
               _loc2_ = 2;
               break;
            case 18:
               _loc2_ = 1;
               break;
            case 19:
               _loc2_ = 1;
               break;
            case 20:
               _loc2_ = 1;
               break;
            case 23:
               _loc2_ = 1;
               break;
            case 22:
               _loc2_ = 1;
               break;
            case 24:
               _loc2_ = 1;
               break;
            case 25:
               _loc2_ = 1;
               break;
            case 5:
               throw new Error("use equipmentSpread");
               break;
            case 1:
               throw new Error("use equipmentDamage");
               break;
            case 9:
               throw new Error("use equipmentReloadTime");
               break;
            case 10:
               throw new Error("use equipmentMovementScale");
               break;
            case 13:
               return o485(param1);
               break;
            case 14:
               return o485(param1);
               break;
            case 15:
               return o485(param1);
               break;
            default:
               throw new Error("getAugmentedValue type not found " + param1.toString());
         }
         var _loc8_:int = 0;
         var _loc7_:* = o17656;
         for each(_loc5_ in o17656)
         {
            if(param1 == _loc5_.type)
            {
               if(_loc2_ == 0)
               {
                  _loc3_ = Number(_loc3_ + (_loc4_ * _loc5_.o18619 - _loc4_));
               }
               else if(_loc2_ == 1)
               {
                  _loc3_ = Number(_loc3_ + _loc5_.o18619);
               }
               else if(_loc2_ == 2)
               {
                  _loc3_ = Number(_loc3_ + (_loc5_.o18619 - 1));
               }
            }
         }
         return _loc3_;
      }
      
      public function get id() : int
      {
         return parent.id;
      }
      
      public function set id(param1:int) : void
      {
         parent.id = param1;
      }
      
      public function get o11412() : int
      {
         return parent.o11412;
      }
      
      public function set o11412(param1:int) : void
      {
         parent.o11412 = param1;
      }
      
      public function get name() : int
      {
         return parent.name;
      }
      
      public function set name(param1:int) : void
      {
         parent.name = param1;
      }
      
      public function get o20559() : int
      {
         return parent.o20559;
      }
      
      public function set o20559(param1:int) : void
      {
         parent.o20559 = param1;
      }
      
      public function get o7962() : int
      {
         return parent.o7962;
      }
      
      public function set o7962(param1:int) : void
      {
         parent.o7962 = param1;
      }
      
      public function get o20133() : int
      {
         return parent.o20133;
      }
      
      public function set o20133(param1:int) : void
      {
         parent.o20133 = param1;
      }
      
      public function get o7498() : int
      {
         return parent.o7498;
      }
      
      public function set o7498(param1:int) : void
      {
         parent.o7498 = param1;
      }
      
      public function get o9421() : int
      {
         return parent.o9421;
      }
      
      public function set o9421(param1:int) : void
      {
         parent.o9421 = param1;
      }
      
      public function get o5822() : Number
      {
         return o7431(13);
      }
      
      public function set o5822(param1:Number) : void
      {
         parent.o5822 = param1;
      }
      
      public function get o16041() : Number
      {
         return o7431(14);
      }
      
      public function set o16041(param1:Number) : void
      {
         parent.o16041 = param1;
      }
      
      public function get o5317() : Number
      {
         return o7431(15);
      }
      
      public function set o5317(param1:Number) : void
      {
         parent.o5317 = param1;
      }
      
      public function get o10720() : Number
      {
         return o7431(22);
      }
      
      public function set o10720(param1:Number) : void
      {
         parent.o10720 = param1;
      }
      
      public function get o5991() : Number
      {
         return parent.o5991;
      }
      
      public function set o5991(param1:Number) : void
      {
         parent.o5991 = param1;
      }
      
      public function get o5725() : Number
      {
         return o7431(24);
      }
      
      public function set o5725(param1:Number) : void
      {
         parent.o5725 = param1;
      }
      
      public function get energy() : Number
      {
         return o7431(16);
      }
      
      public function set energy(param1:Number) : void
      {
         parent.energy = param1;
      }
      
      public function get o11243() : Number
      {
         return o7431(17);
      }
      
      public function set o11243(param1:Number) : void
      {
         parent.o11243 = param1;
      }
      
      public function get o1937() : Number
      {
         return o7431(18);
      }
      
      public function set o1937(param1:Number) : void
      {
         parent.o1937 = param1;
      }
      
      public function get o8514() : Number
      {
         return o7431(19);
      }
      
      public function set o8514(param1:Number) : void
      {
         parent.o8514 = param1;
      }
      
      public function get o331() : Number
      {
         return o7431(20);
      }
      
      public function set o331(param1:Number) : void
      {
         parent.o331 = param1;
      }
      
      public function get o20957() : Number
      {
         return o7431(25);
      }
      
      public function set o20957(param1:Number) : void
      {
         parent.o20957 = param1;
      }
      
      public function get o15818() : Number
      {
         return o7431(21);
      }
      
      public function set o15818(param1:Number) : void
      {
         parent.o15818 = param1;
      }
      
      public function get o13673() : int
      {
         return parent.o13673;
      }
      
      public function set o13673(param1:int) : void
      {
         parent.o13673 = param1;
      }
      
      public function get display() : Vector.<int>
      {
         return parent.display;
      }
      
      public function set display(param1:Vector.<int>) : void
      {
         parent.display = param1;
      }
      
      public function get o19419() : Vector.<int>
      {
         return parent.o19419;
      }
      
      public function set o19419(param1:Vector.<int>) : void
      {
         parent.o19419 = param1;
      }
      
      public function get o14623() : Vector.<int>
      {
         return parent.o14623;
      }
      
      public function set o14623(param1:Vector.<int>) : void
      {
         parent.o14623 = param1;
      }
      
      public function get o16647() : int
      {
         return parent.o16647;
      }
      
      public function set o16647(param1:int) : void
      {
         parent.o16647 = param1;
      }
      
      public function get o9396() : Boolean
      {
         return parent.o9396;
      }
      
      public function set o9396(param1:Boolean) : void
      {
         parent.o9396 = param1;
      }
      
      public function get o18072() : int
      {
         return parent.o18072;
      }
      
      public function set o18072(param1:int) : void
      {
         parent.o18072 = param1;
      }
      
      public function get o13758() : int
      {
         return parent.o13758;
      }
      
      public function set o13758(param1:int) : void
      {
         parent.o13758 = param1;
      }
      
      public function get o10810() : int
      {
         return parent.o10810;
      }
      
      public function get o19483() : Number
      {
         return o7431(23);
      }
      
      public function set o19901(param1:Boolean) : void
      {
         parent.o19901 = param1;
      }
      
      public function get o19901() : Boolean
      {
         return parent.o19901;
      }
   }
}
