package
{
   import flash.utils.ByteArray;
   
   public class o9626
   {
       
      
      public var o18591:int;
      
      public var o1978:String;
      
      public var o19298:Vector.<int> = null;
      
      public var o18067:Vector.<int> = null;
      
      public var o7001:Vector.<int> = null;
      
      public var o12584:Vector.<int> = null;
      
      public var o7642:Vector.<int> = null;
      
      public var o10245:Vector.<int> = null;
      
      public var o16530:Vector.<int> = null;
      
      public var o19585:Vector.<int> = null;
      
      public function o9626()
      {
         super();
      }
      
      public function load(param1:ByteArray) : void
      {
         var _loc6_:int = 0;
         o18591 = param1.readShort();
         o1978 = param1.readUTF();
         if(o1978 == null)
         {
            o1978 = "NOT SET";
         }
         o19298 = new Vector.<int>();
         var _loc5_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc5_)
         {
            o19298.push(param1.readShort());
            _loc6_++;
         }
         o18067 = new Vector.<int>();
         var _loc2_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            o18067.push(param1.readShort());
            _loc6_++;
         }
         o7001 = new Vector.<int>();
         var _loc9_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc9_)
         {
            o7001.push(param1.readShort());
            _loc6_++;
         }
         o12584 = new Vector.<int>();
         var _loc4_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc4_)
         {
            o12584.push(param1.readShort());
            _loc6_++;
         }
         o7642 = new Vector.<int>();
         var _loc7_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc7_)
         {
            o7642.push(param1.readShort());
            _loc6_++;
         }
         o10245 = new Vector.<int>();
         var _loc10_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc10_)
         {
            o10245.push(param1.readShort());
            _loc6_++;
         }
         o16530 = new Vector.<int>();
         var _loc3_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc3_)
         {
            o16530.push(param1.readShort());
            _loc6_++;
         }
         o19585 = new Vector.<int>();
         var _loc8_:int = param1.readShort();
         _loc6_ = 0;
         while(_loc6_ < _loc8_)
         {
            o19585.push(param1.readShort());
            _loc6_++;
         }
      }
   }
}
