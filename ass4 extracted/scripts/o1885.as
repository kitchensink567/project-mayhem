package
{
   public class o1885
   {
       
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var width:Number = 0;
      
      public var height:Number = 0;
      
      public function o1885()
      {
         super();
      }
      
      public function o8545(param1:o2415) : Boolean
      {
         return o6276(param1.x,param1.y);
      }
      
      public function o6276(param1:Number, param2:Number) : Boolean
      {
         if(param1 < this.x || param1 > this.x + width)
         {
            return false;
         }
         if(param2 < this.y || param2 > this.y + height)
         {
            return false;
         }
         return true;
      }
   }
}
