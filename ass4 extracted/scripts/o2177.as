package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class o2177 extends o14374
   {
       
      
      private var o19419:o14200;
      
      public function o2177(param1:o14200)
      {
         super();
         this.o19419 = param1;
      }
      
      override public function o16384(param1:MovieClip, param2:o13064, param3:int) : void
      {
         super.o16384(param1,param2,param3);
         this.o18855.enabled = true;
         o10846.o19505.o16280(null,o7880.o6138,o6046);
         o10846.o19505.o16280(null,o7880.o10443,o1240);
      }
      
      override public function o13640() : void
      {
         o10846.o19505.o12657(o7880.o6138,o6046);
         o10846.o19505.o12657(o7880.o10443,o1240);
         o10846.o19505.o4115();
         o19419 = null;
         super.o13640();
      }
      
      private function o6046(param1:o7880) : void
      {
         o18855.enabled = param1.o13662;
      }
      
      private function o1240(param1:o7880) : void
      {
         this.close();
      }
      
      override public function o17090(param1:MouseEvent) : void
      {
         o10846.o19505.o15977();
      }
      
      override public function o13781(param1:MouseEvent) : void
      {
         var _loc2_:String = o10846.o19505.o18097();
         o16989.o12407("Debug",_loc2_);
      }
   }
}
