package
{
   import flash.display.Sprite;
   
   public class o266 extends Sprite
   {
       
      
      public function o266()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o15112;
      }
   }
}

import flash.utils.ByteArray;

class o15112 extends o15755
{
   
   public static var o20272:Array = [[10,o17243.o2013,o13351.o10420,"image"],[11,o17243.o19845,o13351.o10420,"animationID"],[12,o17243.o14773,o13351.o10420,"show Parts"],[13,o17243.o14773,o13351.o10420,"show Complete Animations"]];
    
   
   private var o6691:o4332;
   
   private var o10836:int;
   
   private var o14572:String;
   
   private var o19996:Boolean;
   
   private var o2313:Boolean;
   
   private var o6041:Array;
   
   private var o18538:Array;
   
   function o15112()
   {
      o6041 = [];
      o18538 = [];
      super();
   }
   
   override public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc3_:int = param2.readShort();
      o14572 = param2.readUTF();
      o19996 = param2.readBoolean();
      o2313 = param2.readBoolean();
      o6691 = o4519.o9721.o12831(_loc3_);
      o4519.o8116.loader.o17485(o4519.o8116.o7484 + "assets.csv").defer(o15483);
   }
   
   private function o15483(param1:ByteArray) : void
   {
      var _loc5_:int = 0;
      var _loc4_:* = null;
      var _loc6_:* = null;
      var _loc7_:* = null;
      var _loc3_:int = 0;
      var _loc9_:String = param1.readUTFBytes(param1.bytesAvailable);
      var _loc2_:Array = _loc9_.split(",");
      var _loc8_:Boolean = false;
      _loc5_ = 0;
      while(_loc5_ < _loc2_.length)
      {
         _loc4_ = _loc2_[_loc5_].split("\"");
         if(_loc4_ && _loc4_.length >= 2)
         {
            _loc2_[_loc5_] = _loc4_[1];
            _loc6_ = _loc2_[_loc5_].split(".");
            _loc7_ = o14572.split(".");
            _loc8_ = true;
            if(_loc6_.length >= _loc7_.length)
            {
               if(!(o19996 == false && _loc6_.length == _loc7_.length + 2))
               {
                  if(!(o2313 == false && _loc6_.length == _loc7_.length + 1))
                  {
                     _loc3_ = 0;
                     while(_loc3_ < _loc7_.length)
                     {
                        if(_loc6_[_loc3_] != _loc7_[_loc3_])
                        {
                           _loc8_ = false;
                        }
                        _loc3_++;
                     }
                     if(_loc8_)
                     {
                        o4523(_loc2_[_loc5_]);
                     }
                  }
               }
            }
         }
         _loc5_++;
      }
      param1.position = 0;
   }
   
   public function o4523(param1:String) : void
   {
      var _loc3_:int = o6041.length;
      var _loc2_:o4332 = o4519.o8116.o11954.o10869();
      _loc2_.position = new o2415();
      _loc2_.position.x = o6691.position.x + _loc3_ * 75;
      _loc2_.position.y = o6691.position.y;
      _loc2_.rotation = o6691.rotation;
      _loc2_.o16396 = o17541.o13617(param1);
      _loc2_.o16990 = o11381.o3010;
      o4519.o8116.o11954.o9226(_loc2_);
      o6041.push(_loc2_);
      if(_loc2_ != null && _loc2_.o16396 != null)
      {
         o18538[_loc3_] = o4519.o8116.o11676.o6798(_loc2_.o16396.assetID);
      }
      else
      {
         o18538[_loc3_] = o4519.o8116.o11676.o6798(null);
      }
      o18538[_loc3_].o11525(_loc2_);
      o18538[_loc3_].o10589(param1);
      o18538[_loc3_].play();
   }
}
