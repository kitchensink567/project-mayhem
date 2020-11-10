package
{
   public class o7722
   {
       
      
      private var o7538:o15787;
      
      private var o15700:o15787;
      
      private var o15008:o15787;
      
      public function o7722(param1:Object)
      {
         o7538 = new o15787(0);
         o15700 = new o15787(0);
         o15008 = new o15787(0);
         super();
         if(param1)
         {
            o18402 = (!!isNaN(param1["tier1"])?0:param1["tier1"]) / 1000 as Number;
            o7206 = (!!isNaN(param1["tier2"])?0:param1["tier2"]) / 1000 as Number;
            o15010 = (!!isNaN(param1["tier3"])?0:param1["tier3"]) / 1000 as Number;
         }
      }
      
      public function get o18402() : Number
      {
         return this.o7538.value;
      }
      
      public function get o7206() : Number
      {
         return this.o15700.value;
      }
      
      public function get o15010() : Number
      {
         return this.o15008.value;
      }
      
      public function set o18402(param1:Number) : void
      {
         this.o7538.value = param1;
      }
      
      public function set o7206(param1:Number) : void
      {
         this.o15700.value = param1;
      }
      
      public function set o15010(param1:Number) : void
      {
         this.o15008.value = param1;
      }
      
      public function o10001() : void
      {
         var _loc1_:String = "";
         _loc1_ = _loc1_ + ("|\tDiamond: " + o12267(o18402) + "\n");
         _loc1_ = _loc1_ + ("|\tPlatinum: " + o12267(o7206) + "\n");
         _loc1_ = _loc1_ + ("|\tGold: " + o12267(o15010));
      }
      
      public function o12267(param1:Number) : String
      {
         if(param1 * 1000 > 10)
         {
            return Math.round(param1 * 100).toString() + "%";
         }
         return "0." + Math.round(param1 * 1000) + "%";
      }
   }
}
