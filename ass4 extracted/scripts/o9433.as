package
{
   import flash.utils.Dictionary;
   
   public class o9433
   {
       
      
      public var id:int = 0;
      
      public var name:String = null;
      
      public var o32:String = null;
      
      public var clan:int = 0;
      
      public var o5578:String = null;
      
      public var o7701:String = null;
      
      public var o6443:Boolean;
      
      public var o1727:Dictionary = null;
      
      public function o9433(param1:int, param2:String, param3:String, param4:int, param5:String, param6:String, param7:Boolean, param8:Dictionary)
      {
         super();
         this.id = param1;
         this.name = param2;
         this.o32 = param3;
         this.clan = param4;
         this.o5578 = param5;
         this.o7701 = param6;
         this.o6443 = param7;
      }
      
      public function o104() : String
      {
         if(o6443)
         {
            return "kong_" + id.toString();
         }
         return id.toString();
      }
   }
}
