package
{
   public class o8608 implements o8925
   {
       
      
      public var o2752:o8925 = null;
      
      private var o17656:Vector.<o2347> = null;
      
      public var o15956:o15787;
      
      public function o8608(param1:o8925, param2:Vector.<o2347>, param3:Number)
      {
         o15956 = new o15787(0);
         super();
         this.o2752 = param1;
         this.o17656 = param2;
         this.o15956.value = param3;
      }
      
      public function get o15192() : Number
      {
         return this.o15956.value;
      }
      
      public function o13435(param1:int) : Number
      {
         switch(int(param1) - 1)
         {
            case 0:
               return o2752.o5725;
            case 1:
               return o2752.o18640;
            case 2:
               return 0;
            case 3:
               return o2752.o30;
            case 4:
               return o2752.o19483;
            case 5:
               return o2752.o19455;
            case 6:
               return o2752.o4687;
            case 7:
               return o2752.o3603;
            case 8:
               return o2752.o16832;
            case 9:
               return o2752.o13369;
            case 10:
               return 0;
         }
      }
      
      public function get id() : int
      {
         return o2752.id;
      }
      
      public function set id(param1:int) : void
      {
         o2752.id = param1;
      }
      
      public function o119() : Number
      {
         var _loc3_:Number = 1 / o13435(6);
         var _loc1_:Number = _loc3_ * o15192;
         _loc3_ = _loc3_ + _loc1_;
         var _loc2_:* = _loc3_;
         var _loc6_:int = 0;
         var _loc5_:* = o17656;
         for each(var _loc4_ in o17656)
         {
            if(_loc4_.type == 6)
            {
               _loc2_ = Number(_loc2_ + _loc3_ * _loc4_.o18619);
            }
         }
         return 1 / _loc2_;
      }
      
      public function o16345() : Number
      {
         var _loc2_:Number = 1 - o13435(10);
         var _loc1_:Number = o13435(10);
         var _loc5_:int = 0;
         var _loc4_:* = o17656;
         for each(var _loc3_ in o17656)
         {
            if(_loc3_.type == 10)
            {
               _loc1_ = _loc1_ + _loc2_ * (1 - _loc3_.o18619);
            }
         }
         return _loc1_;
      }
      
      public function o7431(param1:int) : Number
      {
         if(param1 == 6)
         {
            return o119();
         }
         if(param1 == 10)
         {
            return o16345();
         }
         if(param1 == 11)
         {
            return o13974;
         }
         if(param1 == 3)
         {
            return o1775;
         }
         var _loc4_:Number = o13435(param1);
         var _loc3_:* = _loc4_;
         var _loc7_:* = 0;
         var _loc2_:* = 0;
         switch(int(param1) - 1)
         {
            case 0:
            case 1:
               _loc2_ = Number(_loc4_ * o15192);
               break;
            default:
               _loc2_ = Number(_loc4_ * o15192);
               break;
            default:
               _loc2_ = Number(_loc4_ * o15192);
               break;
            default:
               _loc2_ = Number(_loc4_ * o15192);
               break;
            default:
               _loc2_ = Number(_loc4_ * o15192);
               break;
            case 6:
            case 7:
               _loc2_ = Number(_loc4_ * o15192);
         }
         if(param1 == 7)
         {
            param1 = param1;
         }
         var _loc6_:Number = _loc4_ + _loc2_;
         _loc3_ = _loc6_;
         var _loc9_:int = 0;
         var _loc8_:* = o17656;
         for each(var _loc5_ in o17656)
         {
            if(param1 == _loc5_.type)
            {
               if(!(int(param1) - 5))
               {
                  _loc3_ = Number(_loc3_ + _loc7_);
               }
               else
               {
                  _loc3_ = Number(_loc3_ + (_loc6_ * _loc5_.o18619 - _loc6_));
               }
            }
         }
         return _loc3_;
      }
      
      private function o4530(param1:int) : o2347
      {
         var _loc4_:int = 0;
         var _loc3_:* = o17656;
         for each(var _loc2_ in o17656)
         {
            if(param1 == _loc2_.type)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get o13598() : Number
      {
         return o2752.o13598;
      }
      
      public function set o13598(param1:Number) : void
      {
         o2752.o13598 = param1;
      }
      
      public function get o17638() : int
      {
         return o2752.o17638;
      }
      
      public function set o17638(param1:int) : void
      {
         o2752.o17638 = param1;
      }
      
      public function get o6365() : int
      {
         return o2752.o6365;
      }
      
      public function set o6365(param1:int) : void
      {
         o2752.o6365 = param1;
      }
      
      public function get o3603() : int
      {
         return o7431(8);
      }
      
      public function set o3603(param1:int) : void
      {
         o2752.o3603 = param1;
      }
      
      public function get o16095() : Boolean
      {
         return o2752.o16095;
      }
      
      public function set o16095(param1:Boolean) : void
      {
         o2752.o16095 = param1;
      }
      
      public function get o9421() : int
      {
         return o2752.o9421;
      }
      
      public function set o9421(param1:int) : void
      {
         o2752.o9421 = param1;
      }
      
      public function get o7962() : int
      {
         return o2752.o7962;
      }
      
      public function set o7962(param1:int) : void
      {
         o2752.o7962 = param1;
      }
      
      public function get o11412() : int
      {
         return o2752.o11412;
      }
      
      public function set o11412(param1:int) : void
      {
         o2752.o11412 = param1;
      }
      
      public function get o16647() : int
      {
         return o2752.o16647;
      }
      
      public function set o16647(param1:int) : void
      {
         o2752.o16647 = param1;
      }
      
      public function get o13369() : Number
      {
         return o7431(10);
      }
      
      public function set o13369(param1:Number) : void
      {
         o2752.o13369 = param1;
      }
      
      public function get name() : int
      {
         return o2752.name;
      }
      
      public function set name(param1:int) : void
      {
         o2752.name = param1;
      }
      
      public function get o16685() : Number
      {
         return o2752.o16685;
      }
      
      public function set o16685(param1:Number) : void
      {
         o2752.o16685 = param1;
      }
      
      public function get o14120() : Number
      {
         return o2752.o14120;
      }
      
      public function set o14120(param1:Number) : void
      {
         o2752.o14120 = param1;
      }
      
      public function get o7498() : int
      {
         return o2752.o7498;
      }
      
      public function set o7498(param1:int) : void
      {
         o2752.o7498 = param1;
      }
      
      public function get o19455() : Number
      {
         return o7431(6);
      }
      
      public function set o19455(param1:Number) : void
      {
         o2752.o19455 = param1;
      }
      
      public function get o20133() : int
      {
         return o2752.o20133;
      }
      
      public function set o20133(param1:int) : void
      {
         o2752.o20133 = param1;
      }
      
      public function get o16832() : Number
      {
         return o7431(9);
      }
      
      public function set o16832(param1:Number) : void
      {
         o2752.o16832 = param1;
      }
      
      public function get o16859() : int
      {
         return o2752.o16859;
      }
      
      public function set o16859(param1:int) : void
      {
         o2752.o16859 = param1;
      }
      
      public function get display() : int
      {
         return o2752.display;
      }
      
      public function get o19419() : int
      {
         return o2752.o19419;
      }
      
      public function set o19419(param1:int) : void
      {
         o2752.o19419 = param1;
      }
      
      public function set display(param1:int) : void
      {
         o2752.display = param1;
      }
      
      public function get o12735() : int
      {
         return o2752.o12735;
      }
      
      public function set o12735(param1:int) : void
      {
         o2752.o12735 = param1;
      }
      
      public function get o6670() : int
      {
         return o2752.o6670;
      }
      
      public function set o6670(param1:int) : void
      {
         o2752.o6670 = param1;
      }
      
      public function get o20957() : int
      {
         return o2752.o20957;
      }
      
      public function set o20957(param1:int) : void
      {
         o2752.o20957 = param1;
      }
      
      public function get o8015() : int
      {
         return o2752.o8015;
      }
      
      public function get o5725() : Number
      {
         return o7431(1);
      }
      
      public function get o3() : int
      {
         return o2752.o3;
      }
      
      public function get o30() : Number
      {
         return o7431(4);
      }
      
      public function get o18640() : Number
      {
         return o7431(2);
      }
      
      public function set o18640(param1:Number) : void
      {
         o2752.o18640 = param1;
      }
      
      public function get o4687() : Number
      {
         return o7431(7);
      }
      
      public function get o10273() : Number
      {
         return o2752.o10273;
      }
      
      public function get o14729() : Number
      {
         return o2752.o14729;
      }
      
      public function get o7645() : Number
      {
         return o2752.o7645;
      }
      
      public function get o15985() : Number
      {
         return o2752.o15985;
      }
      
      public function get o7077() : Number
      {
         return o2752.o7077;
      }
      
      public function get o11401() : Number
      {
         return o2752.o11401;
      }
      
      public function get o4766() : int
      {
         return o2752.o4766;
      }
      
      public function get o1089() : int
      {
         return o2752.o1089;
      }
      
      public function get o15108() : Number
      {
         return o2752.o15108;
      }
      
      public function get o13485() : int
      {
         return o2752.o13485;
      }
      
      public function get o6307() : int
      {
         return o2752.o6307;
      }
      
      public function get o5898() : Number
      {
         return o2752.o5898;
      }
      
      public function get o16295() : Number
      {
         return o2752.o16295;
      }
      
      public function get o11608() : int
      {
         return o2752.o11608;
      }
      
      public function get o15070() : Number
      {
         return o2752.o15070;
      }
      
      public function get o20120() : Number
      {
         return o2752.o20120;
      }
      
      public function get o5949() : Number
      {
         return o2752.o5949;
      }
      
      public function get o9396() : Boolean
      {
         return o2752.o9396;
      }
      
      public function get o727() : int
      {
         return o2752.o727;
      }
      
      public function get o10012() : int
      {
         return o2752.o10012;
      }
      
      public function get o11570() : int
      {
         return o2752.o11570;
      }
      
      public function set o11570(param1:int) : void
      {
         o2752.o11570 = param1;
      }
      
      public function get o6947() : Boolean
      {
         return o2752.o6947;
      }
      
      public function set o6947(param1:Boolean) : void
      {
         o2752.o6947 = param1;
      }
      
      public function get o9012() : Boolean
      {
         return o2752.o9012;
      }
      
      public function set o9012(param1:Boolean) : void
      {
         o2752.o9012 = param1;
      }
      
      public function get o20325() : int
      {
         return o2752.o20325;
      }
      
      public function set o20325(param1:int) : void
      {
         o2752.o20325 = param1;
      }
      
      public function get o13758() : int
      {
         return o2752.o13758;
      }
      
      public function set o13758(param1:int) : void
      {
         o2752.o13758 = param1;
      }
      
      public function get o19739() : int
      {
         return o2752.o19739;
      }
      
      public function get o910() : int
      {
         return o2752.o910;
      }
      
      public function get o8045() : int
      {
         return o2752.o8045;
      }
      
      public function get o19939() : int
      {
         return o2752.o19939;
      }
      
      public function get o5168() : Boolean
      {
         return o2752.o5168;
      }
      
      public function get o12804() : Number
      {
         return o2752.o12804;
      }
      
      public function get o3464() : int
      {
         return o2752.o3464;
      }
      
      public function get o18634() : Number
      {
         return o2752.o18634;
      }
      
      public function get o7468() : int
      {
         return o2752.o7468;
      }
      
      public function get o3846() : int
      {
         return o2752.o3846;
      }
      
      public function get o17637() : int
      {
         return o2752.o17637;
      }
      
      public function get o14929() : int
      {
         return o2752.o14929;
      }
      
      public function get o5806() : int
      {
         return o2752.o5806;
      }
      
      public function get o12734() : int
      {
         return o2752.o12734;
      }
      
      public function get o10810() : int
      {
         return o2752.o10810;
      }
      
      public function get o19483() : Number
      {
         return o7431(5);
      }
      
      public function set o19483(param1:Number) : void
      {
         o2752.o19483 = param1;
      }
      
      public function get o4045() : Number
      {
         return o2752.o4045;
      }
      
      public function set o4045(param1:Number) : void
      {
         o2752.o4045 = param1;
      }
      
      public function get o1775() : Number
      {
         var _loc1_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc2_:o2347 = o4530(3);
         if(_loc2_ == null)
         {
            return 0;
         }
         _loc1_ = _loc2_.o18619 - 1;
         _loc3_ = 0;
         return _loc1_ + _loc3_;
      }
      
      public function get o13974() : Number
      {
         var _loc1_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc2_:o2347 = o4530(11);
         if(_loc2_ == null)
         {
            return 0;
         }
         _loc1_ = 100 * (_loc2_.o18619 - 1);
         _loc3_ = 0;
         return _loc1_ + _loc3_;
      }
      
      public function get o15918() : Number
      {
         return o2752.o15918;
      }
      
      public function get o10613() : Number
      {
         return this.o2752.o10613;
      }
      
      public function get o16703() : int
      {
         return o2752.o16703;
      }
      
      public function set o19901(param1:Boolean) : void
      {
         this.o2752.o19901 = param1;
      }
      
      public function get o19901() : Boolean
      {
         return o2752.o19901;
      }
   }
}
