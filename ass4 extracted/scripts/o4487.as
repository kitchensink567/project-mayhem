package
{
   import flash.display.Sprite;
   
   public class o4487 extends Sprite
   {
       
      
      public function o4487()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o182;
      }
   }
}

import flash.utils.ByteArray;

class o182 extends o7848
{
   
   public static var networked:Boolean = false;
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.float,o13351.o10420,"Heal Amount (eg 0.5 for 50%)"],[3,o17243.o8809,o13351.o5585,"spawn event id"]];
    
   
   private var o16658:Number = 0.2;
   
   private var o20548:int = 0;
   
   function o182()
   {
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc6_:* = null;
      var _loc5_:int = param2.readShort();
      var _loc7_:Number = param2.readFloat();
      o16658 = o4519.o8116.profileData.o5292.o3144;
      if(_loc7_ < 0)
      {
         o16658 = _loc7_;
      }
      if(param2.bytesAvailable > 0)
      {
         o20548 = param2.readInt();
      }
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(1,5);
      var _loc8_:o17761 = new o17761(_loc3_.o2535);
      _loc8_.o10827(-19,-19,38,38);
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o8723.o14325,o8723.o32,o8723.o32,true);
      _loc4_.o10289 = _loc8_.id;
      _loc3_.o14230(_loc4_);
      if(_loc5_ == 0)
      {
         _loc6_ = o4519.o8116.o11954.o10869();
      }
      else
      {
         _loc6_ = o4519.o9721.o12831(_loc5_);
         _loc3_.o16687(_loc6_.rotation);
         _loc3_.o8564(_loc6_.position.x,_loc6_.position.y);
      }
      if(_loc6_ != null)
      {
         if(o16658 >= 0)
         {
            _loc6_.o16396 = o17541.o13617("assets.item.MedCrate");
         }
         else
         {
            _loc6_.o16396 = o17541.o13617("assets.item.MedCrateToxic");
         }
         _loc6_.o16990 = o11381.o19660;
      }
      super.o10783(param1,_loc3_,_loc6_,o4519.o8116.o11676);
      if(o20548 != 0)
      {
         o6691.o9824 = false;
         o4519.o13206.o16280(this,o8694.o1956,o14957);
      }
      else
      {
         o16280(this,o17197.o9663,o9663);
      }
   }
   
   private function o14957(param1:o11210) : void
   {
      if(param1.o13743 == o20548)
      {
         o6691.o9824 = true;
         o16280(this,o17197.o9663,o9663);
      }
   }
   
   private function o9663(param1:o15259) : void
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      var _loc4_:o17517 = param1.o11541 as o17517;
      if(_loc4_ != null && _loc4_ == o4519.o32 && !_loc4_.o7694 && _loc4_.o11243 < _loc4_.o1589)
      {
         _loc2_ = new o18848();
         _loc2_.amount = _loc4_.o1589 * o16658;
         _loc2_.o127 = true;
         o4519.o8116.o8361.o3742(_loc4_,_loc2_);
         if(_loc2_.amount >= 0)
         {
            _loc3_ = o4519.o8116.o13427.o11961(o2130,["assets.skills.StimShot",o11381.o7800]) as o2130;
            if(_loc3_ != null)
            {
               o4519.o8116.o11954.o2429(_loc3_.o6691,_loc4_.o6691);
               _loc3_.o6691.rotation = 0;
            }
            _loc4_.o13635();
            o4519.o8116.o4812.o1162.o16132.play(1);
         }
         else
         {
            o4519.o8116.o4812.o1162.o2648.play(1);
            o4519.o13206.dispatchData(new o13310(o13310.o268,_loc4_));
         }
         o19115();
      }
   }
}
