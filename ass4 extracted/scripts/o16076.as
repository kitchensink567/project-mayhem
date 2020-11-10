package
{
   public class o16076
   {
       
      
      private var o20856:Vector.<Number>;
      
      private var o3535:Vector.<Number>;
      
      public var o10976:Number = 0;
      
      public var o15734:Number = 0;
      
      private var o2557:int = 10;
      
      private var o17833:int = 0;
      
      public function o16076(param1:int)
      {
         o20856 = new Vector.<Number>();
         o3535 = new Vector.<Number>();
         super();
         this.o2557 = param1;
      }
      
      public function o18184(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0;
         while(o20856.length < o2557)
         {
            o20856.push(param1);
            o3535.push(param2);
            o17833 = 0;
         }
         o20856[o17833] = param1;
         o3535[o17833] = param2;
         o17833 = Number(o17833) + 1;
         if(o17833 >= o2557)
         {
            o17833 = 0;
         }
         param1 = 0;
         param2 = 0;
         _loc3_ = 0;
         while(_loc3_ < o2557)
         {
            param1 = Number(param1 + o20856[_loc3_]);
            param2 = Number(param2 + o3535[_loc3_]);
            _loc3_++;
         }
         o10976 = param1 / o2557;
         o15734 = param2 / o2557;
      }
      
      public function o13640() : void
      {
         o20856 = null;
         o3535 = null;
         o10976 = 0;
         o15734 = 0;
         o2557 = 0;
         o17833 = 0;
      }
   }
}
