package
{
   public class o14909
   {
       
      
      private var o14281:Number = 0;
      
      public var o1007:String;
      
      public var o9595:int;
      
      public var o1166:int;
      
      public var o17283:int;
      
      public var o14031:Boolean;
      
      public var o54:Boolean;
      
      public var o14884:Vector.<o10102>;
      
      public var o1975:Vector.<o10102>;
      
      public var o8159:o1641;
      
      public var o17137:o1641;
      
      public var o18339:int = 1;
      
      public var o19189:int = 0;
      
      public var o15436:int = -1;
      
      public var o5059:int = -1;
      
      public var o11620:Vector.<o8852>;
      
      public var o4256:Vector.<o8852>;
      
      public var o18747:Boolean = false;
      
      public var o3049:Boolean = false;
      
      public var o5521:int = 0;
      
      public var o16755:int = 0;
      
      public var o18874:Vector.<o7145>;
      
      public var o2950:int;
      
      public function o14909()
      {
         super();
         o6557 = 0;
         o9595 = 0;
         o1166 = 0;
         o17283 = 0;
         o14884 = new Vector.<o10102>();
         o1975 = new Vector.<o10102>();
         o8159 = new o1641();
         o17137 = new o1641();
         o11620 = new Vector.<o8852>();
         o4256 = new Vector.<o8852>();
         o18874 = new Vector.<o7145>();
      }
      
      public function get o6557() : Number
      {
         return o14281;
      }
      
      public function set o6557(param1:Number) : void
      {
         if(param1 == 0)
         {
            param1 = param1;
         }
         o14281 = param1;
      }
      
      public function o8176(param1:int, param2:String) : o10102
      {
         var _loc6_:int = 0;
         var _loc5_:* = o14884;
         for each(var _loc4_ in o14884)
         {
            if(_loc4_.id == param1)
            {
               return _loc4_;
            }
         }
         var _loc3_:o10102 = new o10102(param1,param2);
         o14884.push(_loc3_);
         return _loc3_;
      }
      
      public function o14249(param1:int, param2:String) : o10102
      {
         var _loc6_:int = 0;
         var _loc5_:* = o1975;
         for each(var _loc3_ in o1975)
         {
            if(_loc3_.id == param1)
            {
               return _loc3_;
            }
         }
         var _loc4_:o10102 = new o10102(param1,param2);
         o1975.push(_loc4_);
         return _loc4_;
      }
      
      public function o13640() : void
      {
         o6557 = 0;
         o1007 = null;
         o9595 = 0;
         o1166 = 0;
         o17283 = 0;
         o14031 = false;
         o54 = false;
         o14884 = null;
         o1975 = null;
         o8159 = null;
         o17137 = null;
         o11620 = null;
         o4256 = null;
         o18874 = null;
         o18747 = 0;
      }
   }
}
