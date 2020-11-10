package
{
   public class o4039 extends o8023
   {
       
      
      public var o2535:o20139 = null;
      
      public var id:uint = 0;
      
      public var o6365:uint = 0;
      
      public var mask:uint = 0;
      
      public var o16763:uint = 0;
      
      public var body:o10262 = null;
      
      public var o4982:Boolean = false;
      
      public var o12438:Number = 0;
      
      public var o7742:Number = 0;
      
      public function o4039(param1:o20139 = null, param2:uint = 1, param3:uint = 4294967295, param4:uint = 4294967295, param5:Boolean = false, param6:Number = 0, param7:Number = 0)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         this.o2535 = param1;
         this.o6365 = param2;
         this.mask = param3;
         this.o16763 = param4;
         this.o4982 = param5;
         this.o12438 = param6;
         this.o7742 = param7;
         id = param1.o9297(param2,param3,param4,param5,param6,param7);
      }
      
      public function initialise(param1:o20139, param2:uint = 1, param3:uint = 4294967295, param4:uint = 4294967295, param5:Boolean = false, param6:Number = 0, param7:Number = 0) : void
      {
         this.o2535 = param1;
         this.o6365 = param2;
         this.mask = param3;
         this.o16763 = param4;
         this.o4982 = param5;
         this.o12438 = param6;
         this.o7742 = param7;
         id = param1.o9297(param2,param3,param4,param5,param6,param7);
      }
      
      public function set o10289(param1:uint) : void
      {
         o2535.o18214(id,param1);
      }
      
      public function o8508(param1:uint) : void
      {
         this.mask = param1;
         o2535.o8508(id,param1);
      }
   }
}
