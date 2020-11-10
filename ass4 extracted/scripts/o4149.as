package
{
   import flash.display.Sprite;
   
   public class o4149 extends Sprite
   {
       
      
      public function o4149()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o17785;
      }
   }
}

import flash.utils.ByteArray;

class o17785 extends o9347
{
   
   public static var o20272:Array = [[5,o17243.o2013,o13351.o10420,"barrier graph"],[6,o17243.o2013,o13351.o10420,"image1"],[7,o17243.o2013,o13351.o10420,"image2"]];
    
   
   private var o2953:Boolean = false;
   
   function o17785()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o5973 = param1;
      o10303 = param2;
      o11243 = 2000;
      super.o2348(o5973,o10303.readShort(),o10303.readShort(),o8723.o10217,0,o11243,o10303.readShort());
      o2953 = true;
      var o19505:o9347 = this;
      o4519.o13206.o16280(this,o16450.o9745,function():void
      {
         o1051.o4767(o19505,1,o5364,0,true);
      });
   }
   
   private function o5364() : void
   {
      var _loc1_:int = 0;
      var _loc2_:* = undefined;
      _loc1_ = 1;
      while(_loc1_ < 5)
      {
         _loc2_ = o4519.o9721.o12334("PurgeNest" + _loc1_.toString());
         if(_loc2_ != null)
         {
            if(_loc2_.o14101() == false)
            {
               if(o2953)
               {
                  o13052();
               }
               return;
            }
         }
         _loc1_++;
      }
      if(o2953 == false)
      {
         o7433();
      }
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      o2953 = true;
      o16166.o12265 = false;
      o16166.o3030("damage" + 1 + "Open");
      o16166.o11543();
      o16166.play();
      if(o4775)
      {
         o4775.o12265 = false;
         o4775.o3030("damage" + 1 + "Open");
         o4775.o11543();
         o4775.play();
      }
      body.o15838(0);
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o18047.play(0.5,0,0,false,_loc2_.o10088());
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      o2953 = false;
      o16166.o12265 = false;
      o16166.o3030("damage" + 1 + "Open");
      o16166.o6343();
      o16166.play();
      if(o4775)
      {
         o4775.o12265 = false;
         o4775.o3030("damage" + 1 + "Open");
         o4775.o6343();
         o4775.play();
      }
      body.o15838(o9288);
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o18047.play(0.5,0,0,false,_loc2_.o10088());
   }
}
