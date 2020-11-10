package
{
   import flash.utils.ByteArray;
   
   public class o3667
   {
       
      
      public var id:int;
      
      public var name:int;
      
      public var o7962:int;
      
      public var o18102:int;
      
      public var o8633:int;
      
      public function o3667()
      {
         super();
      }
      
      public function load(param1:ByteArray) : void
      {
         id = param1.readShort();
         name = param1.readShort();
         o7962 = param1.readShort();
         o18102 = param1.readShort();
         o8633 = param1.readShort();
      }
   }
}
