package
{
   public class o14748
   {
       
      
      public var assetID = null;
      
      public var frame:int = 1;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var width:int = 0;
      
      public var height:int = 0;
      
      public var quality:int = 0;
      
      public function o14748(param1:*, param2:int)
      {
         super();
         this.assetID = param1;
         this.frame = 1;
         this.x = 0;
         this.y = 0;
         this.width = 0;
         this.height = 0;
         this.quality = 2;
      }
      
      public function initialise(param1:int = 1, param2:Number = 0, param3:Number = 0, param4:int = 0, param5:int = 0, param6:int = 2) : void
      {
         this.frame = param1;
         this.x = param2;
         this.y = param3;
         this.width = param4;
         this.height = param5;
         this.quality = param6;
      }
      
      public function o7653(param1:* = null, param2:int = 1, param3:Number = 0, param4:Number = 0, param5:int = 0, param6:int = 0, param7:int = 2) : void
      {
         this.assetID = param1;
         this.frame = param2;
         this.x = param3;
         this.y = param4;
         this.width = param5;
         this.height = param6;
         this.quality = param7;
      }
      
      public function o19115() : void
      {
         assetID = null;
      }
   }
}
