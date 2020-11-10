package
{
   import flash.display.Sprite;
   
   public class o8155 extends Sprite
   {
       
      
      public function o8155()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10363;
      }
   }
}

import flash.utils.ByteArray;

class o10363 extends o9347
{
   
   public static var o20272:Array = [[0,o17243.o19845,o13351.o10420,"name"],[1,o17243.o2013,o13351.o10420,"physics barrier"],[2,o17243.o2013,o13351.o10420,"image"]];
    
   
   private var o406:o10262;
   
   private var o8770:o10262;
   
   private var o7891:o10262;
   
   private var o2953:Boolean = false;
   
   private var o19335:Boolean = false;
   
   private var o19920:Boolean = false;
   
   function o10363()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      name = param2.readUTF();
      var _loc4_:int = param2.readShort();
      var _loc3_:int = param2.readShort();
      this.o2348(param1,_loc4_,_loc3_,o8723.o10217,0,0);
      body.o15838(o9288);
   }
   
   override public function o7433(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      o2953 = true;
      o16166.o12265 = false;
      o16166.o11224(1,18);
      o16166.o11543();
      o16166.play();
      if(o6691 && o6691.position)
      {
         _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
         o4519.o8116.o4812.o4404.o14791.play(0.5,0,0,false,_loc2_.o10088());
      }
      body.o15838(0);
   }
   
   override public function o13052(param1:Boolean = true) : void
   {
      var _loc2_:* = null;
      if(o19335 || o19920)
      {
         return;
      }
      o2953 = false;
      o16166.o12265 = false;
      o16166.o11224(1,18);
      o16166.o6343();
      o16166.gotoAndPlay(18);
      if(param1)
      {
         if(o6691 && o6691.position)
         {
            _loc2_ = new o257(this.o6691.position.x,this.o6691.position.y);
            o4519.o8116.o4812.o4404.o16977.play(0.5,0,0,false,_loc2_.o10088());
         }
      }
      body.o15838(o9288);
   }
}
