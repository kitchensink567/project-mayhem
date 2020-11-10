package
{
   import flash.utils.ByteArray;
   
   public class o1587
   {
       
      
      public var o17834:String;
      
      public var o4036:Vector.<o14238>;
      
      private var o17170:o16123;
      
      private var o12240:o15787;
      
      private var o14483:o10411;
      
      private var o12937:o16123;
      
      private var o9332:o16123;
      
      private var o18375:o16123;
      
      private var o1014:o16123;
      
      private var o14201:o16123;
      
      private var o7490:o16123;
      
      private var o1752:o16123;
      
      private var o14467:o16123;
      
      private var o4548:o16123;
      
      private var o9778:o15787;
      
      private var o7075:o15787;
      
      public function o1587()
      {
         o17170 = new o16123(0);
         o12240 = new o15787(0);
         o14483 = new o10411(false);
         o12937 = new o16123(0);
         o9332 = new o16123(0);
         o18375 = new o16123(0);
         o1014 = new o16123(0);
         o14201 = new o16123(0);
         o7490 = new o16123(0);
         o1752 = new o16123(0);
         o14467 = new o16123(0);
         o4548 = new o16123(0);
         o9778 = new o15787(0);
         o7075 = new o15787(0);
         super();
      }
      
      public function get id() : int
      {
         return o17170.value;
      }
      
      public function get o19672() : Number
      {
         return o12240.value;
      }
      
      public function get o8193() : Boolean
      {
         return o14483.value;
      }
      
      public function get o5949() : Number
      {
         return o12937.value;
      }
      
      public function get o7191() : Number
      {
         return o9332.value;
      }
      
      public function get o11171() : Number
      {
         return o18375.value;
      }
      
      public function get o4052() : int
      {
         return o1014.value;
      }
      
      public function get o5617() : int
      {
         return o14201.value;
      }
      
      public function get o475() : int
      {
         return o7490.value;
      }
      
      public function get o12492() : int
      {
         return o1752.value;
      }
      
      public function get o10021() : int
      {
         return o14467.value;
      }
      
      public function get o6568() : int
      {
         return o4548.value;
      }
      
      public function get o1690() : Number
      {
         return o9778.value;
      }
      
      public function get o10981() : Number
      {
         return o7075.value;
      }
      
      public function load(param1:ByteArray) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         o17170.value = param1.readInt();
         o17834 = param1.readUTF();
         var _loc2_:int = param1.readShort();
         o12240.value = param1.readFloat();
         o7075.value = param1.readFloat();
         o14483.value = param1.readBoolean();
         o12937.value = param1.readFloat();
         o9332.value = param1.readFloat();
         o9778.value = param1.readFloat();
         o18375.value = param1.readFloat();
         o1752.value = param1.readInt();
         o14467.value = param1.readInt();
         o4548.value = param1.readInt();
         o1014.value = param1.readShort();
         o14201.value = param1.readShort();
         o7490.value = param1.readShort();
         o4036 = new Vector.<o14238>();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new o14238();
            _loc4_.load(param1);
            this.o4036.push(_loc4_);
            _loc3_++;
         }
      }
   }
}
