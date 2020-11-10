package
{
   import flash.utils.Dictionary;
   
   public class o2041
   {
       
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var name:String;
      
      public var o16079:Vector.<o2041> = null;
      
      public var o13403:Dictionary = null;
      
      public function o2041(param1:int, param2:Number, param3:Number, param4:String)
      {
         name = "";
         super();
         this.id = param1;
         this.x = param2;
         this.y = param3;
         this.name = param4;
         o16079 = Mem.create(this,Vector.<o2041>) as Vector.<o2041>;
         o13403 = Mem.create(this,Dictionary) as Dictionary;
      }
   }
}
