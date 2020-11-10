package
{
   public class o4266
   {
       
      
      public var o7735:String;
      
      public var o8855:Vector.<o3052>;
      
      private var o17170:o16123;
      
      public function o4266()
      {
         o8855 = new Vector.<o3052>();
         o17170 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function o13404() : String
      {
         var _loc2_:String = o7735;
         var _loc4_:int = 0;
         var _loc3_:* = o8855;
         for each(var _loc1_ in o8855)
         {
            _loc2_ = _loc1_.o3309(_loc2_);
         }
         return _loc2_;
      }
      
      public function o19262() : Boolean
      {
         var _loc3_:int = 0;
         var _loc2_:* = this.o8855;
         for each(var _loc1_ in this.o8855)
         {
            if(_loc1_.o2723 == false)
            {
               return true;
            }
         }
         return false;
      }
      
      public function init(param1:String, param2:o2693) : o4266
      {
         var _loc4_:* = undefined;
         o7735 = param2.o9009(param1);
         param1 = param1 + ".";
         if(param2.o20495(param1 + "id"))
         {
            _loc4_ = param2.o3791(param1 + "id");
            var _loc7_:int = 0;
            var _loc6_:* = _loc4_;
            for each(var _loc3_ in _loc4_)
            {
               var _loc5_:* = _loc3_;
               switch(_loc5_)
               {
                  case 1:
                     o8855.push(new o281(param1,param2));
                     continue;
                  case 2:
                     o8855.push(new o12198(param1,param2));
                     continue;
                  case 3:
                     o8855.push(new o19880(param1,param2));
                     continue;
                  case 4:
                     o8855.push(new o5869(param1,param2));
                     continue;
                  case 5:
                     o8855.push(new o8934(param1,param2));
                     continue;
                  case 6:
                     o8855.push(new o1617(param1,param2));
                     continue;
                  case 7:
                     o8855.push(new o8345(param1,param2));
                     continue;
                  case 8:
                     o8855.push(new o16186(param1,param2));
                     continue;
                  case 9:
                     o8855.push(new o19780(param1,param2));
                     continue;
                  case 10:
                     o8855.push(new o7904(param1,param2));
                     continue;
                  case 11:
                     o8855.push(new o12596(param1,param2));
                     continue;
                  case 12:
                     o8855.push(new o9202(param1,param2));
                     continue;
                  case 13:
                     o8855.push(new o9287(param1,param2));
                     continue;
                  case 14:
                     o8855.push(new o20566(param1,param2));
                     continue;
                  case 15:
                     o8855.push(new o6635(param1,param2));
                     continue;
                  case 16:
                     o8855.push(new o4605(param1,param2));
                     continue;
                  case 17:
                     o8855.push(new o14658(param1,param2));
                     continue;
                  case 18:
                     o8855.push(new o12755(param1,param2));
                     continue;
                  case 19:
                     o8855.push(new o5303(param1,param2));
                     continue;
                  case 20:
                     o8855.push(new o365(param1,param2));
                     continue;
                  case 21:
                     o8855.push(new o15963(param1,param2));
                     continue;
                  case 22:
                     o8855.push(new o9169(param1,param2));
                     continue;
                  case 23:
                     o8855.push(new o14989(param1,param2));
                     continue;
                  case 24:
                     o8855.push(new o12287(param1,param2));
                     continue;
                  case 25:
                     o8855.push(new o7548(param1,param2));
                     continue;
                  case 26:
                     o8855.push(new o20470(param1,param2));
                     continue;
                  case 27:
                     o8855.push(new o12243(param1,param2));
                     continue;
                  case 28:
                     o8855.push(new o9198(param1,param2));
                     continue;
                  case 29:
                     o8855.push(new o8062(param1,param2));
                     continue;
                  case 30:
                     o8855.push(new o709(param1,param2));
                     continue;
                  case 31:
                     o8855.push(new o827(param1,param2));
                     continue;
                  case 32:
                     o8855.push(new o10010(param1,param2));
                     continue;
                  case 33:
                     o8855.push(new o5746(param1,param2));
                     continue;
                  case 34:
                     o8855.push(new o5792(param1,param2));
                     continue;
                  case 35:
                     o8855.push(new o3185(param1,param2));
                     continue;
                  case 36:
                     o8855.push(new o8366(param1,param2));
                     continue;
                  case 37:
                     o8855.push(new o14755(param1,param2));
                     continue;
                  case 38:
                     o8855.push(new o15367(param1,param2));
                     continue;
                  case 39:
                     o8855.push(new o8143(param1,param2));
                     continue;
                  case 40:
                     o8855.push(new o7226(param1,param2));
                     continue;
                  case 41:
                     o8855.push(new o10926(param1,param2));
                     continue;
                  case 42:
                     o8855.push(new o793(param1,param2));
                     continue;
                  case 43:
                     o8855.push(new o8091(param1,param2));
                     continue;
                  case 44:
                     o8855.push(new o14112(param1,param2));
                     continue;
                  case 45:
                     o8855.push(new o9069(param1,param2));
                     continue;
                  case 46:
                     o8855.push(new o20477(param1,param2));
                     continue;
                  case 47:
                     o8855.push(new o12459(param1,param2));
                     continue;
                  case 53:
                     o8855.push(new o114(param1,param2));
                     continue;
                  case 48:
                     o8855.push(new o12642(param1,param2));
                     continue;
                  case 49:
                     o8855.push(new o5214(param1,param2));
                     continue;
                  case 50:
                     o8855.push(new o3788(param1,param2));
                     continue;
                  case 51:
                     o8855.push(new o4564(param1,param2));
                     continue;
                  case 52:
                     o8855.push(new o19808(param1,param2));
                     continue;
                  case 0:
                     o8855.push(new o19029(param1,param2));
                     continue;
                  case 55:
                     o8855.push(new o3231(param1,param2));
                     continue;
                  case 54:
                     o8855.push(new o18572(param1,param2));
                     continue;
                  case 56:
                     o8855.push(new o14942(param1,param2));
                     continue;
                  default:
                     throw new Error("Type not found: " + _loc3_);
               }
            }
            return this;
         }
         throw new Error("Type not found: " + _loc3_);
      }
   }
}
