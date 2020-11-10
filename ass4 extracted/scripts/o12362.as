package
{
   public class o12362
   {
       
      
      public var position:o20021;
      
      public var o13707:o9729;
      
      public function o12362(param1:o20021 = null, param2:o9729 = null)
      {
         position = new o20021();
         o13707 = new o9729();
         super();
         if(param1)
         {
            position.o13101(param1);
            o13707.o19487(param2);
         }
      }
      
      public function o3836(param1:o20021, param2:o9729) : void
      {
         position.o13101(param1);
         o13707.o19487(param2);
      }
      
      public function o4911() : void
      {
         position.o14195();
         o13707.o4911();
      }
      
      public function o18596(param1:o12362) : void
      {
         position.o13101(param1.position);
         o13707.o19487(param1.o13707);
      }
      
      public function o17815() : Number
      {
         return Math.atan2(o13707.o19549.y,o13707.o19549.x);
      }
   }
}
