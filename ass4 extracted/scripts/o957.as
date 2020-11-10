package
{
   public class o957 extends o18988
   {
       
      
      public var o7423:o20021;
      
      public var o20551:o20021;
      
      public var o15659:Number;
      
      public function o957()
      {
         o7423 = new o20021();
         o20551 = new o20021();
         super();
         type = 8;
         o15659 = 0;
      }
      
      public function o3836(param1:o5173, param2:o5173, param3:o20021) : void
      {
         o6133 = param1;
         o3428 = param2;
         o7423.o13101(o6133.o962(param3));
         o20551.o13101(o3428.o962(param3));
         o15659 = o3428.o17815() - o6133.o17815();
      }
   }
}
