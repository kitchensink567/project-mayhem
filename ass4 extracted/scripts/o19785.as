package
{
   public class o19785
   {
       
      
      public var o7246:int;
      
      public var o8872:Number = 0;
      
      public var o3537:Number = 0;
      
      public var o14102:Number = 0;
      
      public var o5502:Number = 0;
      
      public var o3353:Number = 0;
      
      public var o7607:Vector.<Number>;
      
      public var o20004:Vector.<String>;
      
      public var o4572:Vector.<Number>;
      
      public var o19932:Vector.<String>;
      
      public var o12852:Number = 0;
      
      public var o12744:Number = 0;
      
      public var o13930:Number = 0;
      
      public function o19785()
      {
         o7607 = new Vector.<Number>();
         o20004 = new Vector.<String>();
         o4572 = new Vector.<Number>();
         o19932 = new Vector.<String>();
         super();
      }
      
      public function o1938() : Number
      {
         return o8872 + o5502 + o3353;
      }
      
      public function o5250() : Number
      {
         return o5502 + o3353 + o12744 + o12852 + o13930;
      }
      
      public function o9166() : Number
      {
         return o8872 + o5250();
      }
      
      public function o4241() : int
      {
         switch(int(o7246) - 4)
         {
            case 0:
               return 2;
            case 1:
               return 2;
            default:
            default:
               return 1;
            case 4:
               return 0;
            case 5:
               return 2;
            case 6:
               return 1;
            case 7:
               return 0;
         }
      }
      
      public function o17342() : Boolean
      {
         var _loc1_:* = o7246;
         switch(_loc1_)
         {
            case 20:
               return true;
            case 24:
               return true;
            case 23:
               return true;
            case 25:
               return true;
            case 22:
               return true;
            case 3:
               return true;
            case 5:
               return true;
            case 10:
               return true;
            case 11:
               return false;
            default:
               return false;
         }
      }
      
      public function o4585(param1:Number) : Boolean
      {
         var _loc2_:String = o11353(param1);
         if(o7246 == 6)
         {
            if(Math.abs(param1) > 0.001)
            {
               return false;
            }
         }
         return _loc2_ == "0" || _loc2_ == "0.0" || _loc2_ == "0.00";
      }
      
      public function o3580(param1:Number) : String
      {
         if(o4585(param1))
         {
            return "+";
         }
         return param1 > 0?"+":"";
      }
      
      public function o9342() : String
      {
         return "";
      }
      
      public function o11353(param1:Number, param2:Boolean = false) : String
      {
         var _loc3_:int = o4241();
         var _loc4_:String = !!param2?o9342():"";
         if(o17342())
         {
            param1 = param1 * 100;
         }
         if(_loc3_ == 0)
         {
            return o16724.o10417(Math.round(param1)) + _loc4_;
         }
         if(_loc3_ == 1)
         {
            return o16724.o20031(param1) + _loc4_;
         }
         if(_loc3_ == 2)
         {
            return o16724.o20301(param1) + _loc4_;
         }
         throw new Error("Invalid dp");
      }
   }
}
