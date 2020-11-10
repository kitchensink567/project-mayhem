package
{
   use namespace b2internal;
   
   public class o9316
   {
       
      
      b2internal var o5548:int;
      
      b2internal var o18064:int;
      
      b2internal var o13788:int;
      
      b2internal var o20785:int;
      
      b2internal var o14692:o4673;
      
      public function o9316()
      {
         super();
      }
      
      public function get o16983() : int
      {
         return o5548;
      }
      
      public function set o16983(param1:int) : void
      {
         o5548 = param1;
         o14692.o17956 = o14692.o17956 & 4294967040 | o5548 & 255;
      }
      
      public function get o5061() : int
      {
         return o18064;
      }
      
      public function set o5061(param1:int) : void
      {
         o18064 = param1;
         o14692.o17956 = o14692.o17956 & 4294902015 | o18064 << 8 & 65280;
      }
      
      public function get o10878() : int
      {
         return o13788;
      }
      
      public function set o10878(param1:int) : void
      {
         o13788 = param1;
         o14692.o17956 = o14692.o17956 & 4278255615 | o13788 << 16 & 16711680;
      }
      
      public function get o5181() : int
      {
         return o20785;
      }
      
      public function set o5181(param1:int) : void
      {
         o20785 = param1;
         o14692.o17956 = o14692.o17956 & 16777215 | o20785 << 24 & 4278190080;
      }
   }
}
