package
{
   public class o9213 extends o19785
   {
       
      
      public var o4256:o1253;
      
      public var o17193:Number = 0;
      
      public var o10825:o15787;
      
      public function o9213()
      {
         o10825 = new o15787(0);
         super();
      }
      
      public function o18239(param1:Number) : String
      {
         return o3580(param1) + o11353(param1) + o9342();
      }
      
      public function o18406() : String
      {
         return o11353(o8872,true);
      }
      
      public function o18698() : String
      {
         return o18239(o5250());
      }
      
      override public function o11353(param1:Number, param2:Boolean = false) : String
      {
         return super.o11353(param1,param2);
      }
      
      override public function o17342() : Boolean
      {
         switch(int(o7246) - 16)
         {
            case 0:
               return false;
            case 1:
               return false;
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
         switch(int(o7246) - 10)
         {
            case 0:
               return "%";
            default:
            default:
            default:
            default:
            default:
               return "";
            case 6:
               return "";
            case 7:
               return "";
            case 8:
               return " hp/sec";
            case 9:
               return " e/sec";
            case 10:
            default:
               return "%";
            case 12:
               return "%";
            case 13:
               return "%";
            case 14:
               return "%";
            case 15:
               return "%";
         }
      }
   }
}
