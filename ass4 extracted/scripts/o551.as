package
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class o551 extends Event
   {
       
      
      public var assetID;
      
      public var frame:int;
      
      public var width:int;
      
      public var height:int;
      
      public var o8580:Number;
      
      public var o2666:Number;
      
      public var scaleX:Number;
      
      public var scaleY:Number;
      
      public var x:Number;
      
      public var y:Number;
      
      public var o15992:int;
      
      public var o9131:int;
      
      public var o2817:BitmapData;
      
      public function o551()
      {
         super(o3101.o9915.toString());
      }
      
      public function initialise(param1:*, param2:int, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:int, param12:int, param13:BitmapData) : void
      {
         this.assetID = param1;
         this.frame = param2;
         this.width = param3;
         this.height = param4;
         this.o8580 = param5;
         this.o2666 = param6;
         this.scaleX = param7;
         this.scaleY = param8;
         this.x = param9;
         this.y = param10;
         this.o15992 = param11;
         this.o9131 = param12;
         this.o2817 = param13;
      }
   }
}
