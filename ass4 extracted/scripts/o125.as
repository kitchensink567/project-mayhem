package
{
   public class o125 extends o19785
   {
       
      
      public var o3492:o14096;
      
      public var o7158:Vector.<o9213>;
      
      public function o125()
      {
         o7158 = new Vector.<o9213>();
         super();
      }
      
      public function o18548() : Number
      {
         var _loc2_:* = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o7158;
         for each(var _loc1_ in o7158)
         {
            if(_loc1_ != null)
            {
               _loc2_ = Number(_loc2_ + _loc1_.o9166());
            }
         }
         return _loc2_;
      }
      
      public function o18562() : Number
      {
         var _loc2_:* = 0;
         var _loc4_:int = 0;
         var _loc3_:* = o7158;
         for each(var _loc1_ in o7158)
         {
            if(_loc1_ != null)
            {
               _loc2_ = Number(_loc2_ + _loc1_.o10825.value);
            }
         }
         return _loc2_;
      }
      
      public function o18239(param1:Number) : String
      {
         if(o4585(param1))
         {
            return "";
         }
         if(this.o7246 == 7)
         {
            return o3580(param1) + o16724.o20031(param1) + " hp/sec";
         }
         return o3580(param1) + o11353(param1) + o9342();
      }
      
      override public function o11353(param1:Number, param2:Boolean = false) : String
      {
         if(o7246 == 1)
         {
            return super.o11353(param1 * (o3492.o2752.o8015 + o15253()),param2);
         }
         return super.o11353(param1,param2);
      }
      
      public function o18406() : String
      {
         var _loc2_:Number = NaN;
         var _loc1_:Number = NaN;
         if(this.o7246 == 7)
         {
            _loc2_ = o3492.o2752.o10273;
            _loc1_ = o8872 / _loc2_;
            return o11353(_loc1_) + "hp/s for " + _loc2_.toString() + " seconds";
         }
         return o11353(o8872) + o9342();
      }
      
      private function o15253() : Number
      {
         if(!(int(o3492.o10748) - 181))
         {
            return 2;
         }
         return 0;
      }
      
      override public function o17342() : Boolean
      {
         switch(int(o7246) - 10)
         {
            case 0:
               return true;
            default:
            default:
            default:
            default:
            default:
               return super.o17342();
            case 6:
               return false;
            case 7:
            default:
            default:
            default:
            default:
               return false;
            case 12:
               return true;
         }
      }
      
      override public function o4241() : int
      {
         switch(int(o7246) - 16)
         {
            case 0:
               return 0;
            case 1:
               return 0;
         }
      }
      
      override public function o9342() : String
      {
         var _loc1_:* = o7246;
         switch(_loc1_)
         {
            case 1:
               return "";
            case 2:
               return "";
            case 3:
               return "%";
            case 4:
               return "";
            case 5:
               return "%";
            case 6:
               return " rps";
            case 7:
               return "";
            case 8:
               return "";
            case 9:
               return " sec";
            case 10:
               return "%";
            case 22:
               return "%";
            case 11:
               return " hp/kill";
            default:
               return "";
         }
      }
   }
}
