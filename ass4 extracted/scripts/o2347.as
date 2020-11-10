package
{
   import flash.utils.ByteArray;
   
   public class o2347
   {
       
      
      private var o5925:o16123;
      
      private var o6805:Vector.<int> = null;
      
      private var o14602:o16123;
      
      private var o9119:o16123;
      
      private var o8310:o16123;
      
      private var o3528:o16123;
      
      private var o18617:Number = 0;
      
      public function o2347()
      {
         o5925 = new o16123(0);
         o14602 = new o16123(0);
         o9119 = new o16123(0);
         o8310 = new o16123(0);
         o3528 = new o16123(0);
         super();
      }
      
      public function get id() : int
      {
         return o5925.value;
      }
      
      public function set id(param1:int) : void
      {
         o5925.value = param1;
      }
      
      public function get o20559() : Vector.<int>
      {
         return o6805;
      }
      
      public function set o20559(param1:Vector.<int>) : void
      {
         o6805 = param1;
      }
      
      public function get type() : int
      {
         return o14602.value;
      }
      
      public function set type(param1:int) : void
      {
         o14602.value = param1;
      }
      
      public function get grade() : int
      {
         return o9119.value;
      }
      
      public function set grade(param1:int) : void
      {
         o9119.value = param1;
      }
      
      public function get o9421() : int
      {
         return o8310.value;
      }
      
      public function set o9421(param1:int) : void
      {
         o8310.value = param1;
      }
      
      public function get o1216() : int
      {
         return o3528.value;
      }
      
      public function set o1216(param1:int) : void
      {
         o3528.value = param1;
      }
      
      public function get o18619() : Number
      {
         return o18617;
      }
      
      public function set o18619(param1:Number) : void
      {
         o18617 = param1;
      }
      
      public function load(param1:ByteArray) : void
      {
         var _loc2_:int = 0;
         id = param1.readShort();
         var _loc3_:int = param1.readByte();
         o20559 = new Vector.<int>();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            o20559.push(o10305.o2107(param1.readByte()));
            _loc2_++;
         }
         type = param1.readByte();
         grade = param1.readByte();
         o9421 = param1.readInt();
         o1216 = param1.readShort();
         o18619 = param1.readFloat();
         if(type == 19 || type == 18)
         {
         }
         if(type == 10)
         {
         }
         if(type == 20)
         {
            o18619 = 1 - o18619;
         }
         if(type == 6)
         {
            o18619 = 1 - o18619;
         }
         if(type == 24 || type == 22 || type == 25 || type == 5 || type == 23)
         {
            o18619 = o18619 - 1;
         }
      }
   }
}
