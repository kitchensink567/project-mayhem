package
{
   use namespace b2internal;
   
   public class o4673
   {
       
      
      public var o19305:o9316;
      
      b2internal var o17956:uint;
      
      public function o4673()
      {
         o19305 = new o9316();
         super();
         o19305.o14692 = this;
      }
      
      public function o18596(param1:o4673) : void
      {
         key = param1.o17956;
      }
      
      public function o2747() : o4673
      {
         var _loc1_:o4673 = new o4673();
         _loc1_.key = key;
         return _loc1_;
      }
      
      public function get key() : uint
      {
         return o17956;
      }
      
      public function set key(param1:uint) : void
      {
         o17956 = param1;
         o19305.o5548 = o17956 & 255;
         o19305.o18064 = (o17956 & 65280) >> 8 & 255;
         o19305.o13788 = (o17956 & 16711680) >> 16 & 255;
         o19305.o20785 = (o17956 & 4278190080) >> 24 & 255;
      }
   }
}
