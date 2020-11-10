package
{
   import flash.display.Sprite;
   
   public class o15308 extends Sprite
   {
       
      
      public function o15308()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o5537;
      }
      
      public static function o17280() : Array
      {
         return o5537.o13492;
      }
      
      public static function clear() : void
      {
         o5537.o13492 = [];
      }
   }
}

import flash.utils.ByteArray;

class o5537 extends o9347
{
   
   public static var o13492:Array = [];
   
   public static var o20272:Array = [[4,o17243.o8809,o13351.o10420,"id"],[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o8809,o13351.o10420,"phase (0=always open)"],[3,o17243.o8809,o13351.o10420,"locked until (9=always)"],[5,o17243.o8809,o13351.o10420,"size (0=small,1=big)"],[6,o17243.o19845,o13351.o10420,"path con on unlock 1"],[7,o17243.o19845,o13351.o10420,"path con on unlock 2"]];
   
   private static const o18696:int = 1;
   
   private static const o6099:int = 2;
   
   private static const o14998:int = 3;
   
   private static const o2369:int = 4;
    
   
   public var id:int = 0;
   
   private var o9883:o4332;
   
   private var o3111:o7331;
   
   private var o2239:o4039;
   
   private var o16020:o4039;
   
   private var o18829:int = 0;
   
   private var o6330:int = 0;
   
   private var o20488:int = 1;
   
   public var o8478:Boolean = false;
   
   private var o7436:int;
   
   private var o14445:int;
   
   private var o4737:int;
   
   private var o5837:String;
   
   private var o10567:String;
   
   private var o19046:int = -1;
   
   private var o17527:Vector.<o18442>;
   
   function o5537()
   {
      o5837 = "";
      o10567 = "";
      o17527 = new Vector.<o18442>();
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      o13492.push(this);
      this.id = param2.readInt();
      var _loc5_:int = param2.readShort();
      o18829 = param2.readInt();
      if(param2.bytesAvailable > 0)
      {
         o6330 = param2.readInt();
      }
      var _loc8_:int = 0;
      if(param2.bytesAvailable > 0)
      {
         _loc8_ = param2.readInt();
      }
      if(param2.bytesAvailable > 0)
      {
         o5837 = param2.readUTF();
         o10567 = param2.readUTF();
      }
      var _loc4_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc4_.o16990 = 22;
      o12487 = true;
      o10640 = false;
      o7953.x = _loc4_.position.x;
      o7953.y = _loc4_.position.y;
      this.o30 = 80;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(0,0);
      var _loc6_:o17761 = new o17761(_loc3_.o2535);
      if(_loc8_ == 0)
      {
         _loc6_.o10827(-50,-20,100,40);
      }
      else
      {
         _loc6_.o10827(-75,-20,150,40);
      }
      o2239 = o4519.o8116.o20600.o15803(o8723.o18180,o8723.o10217,o8723.o10217);
      o2239.o10289 = _loc6_.id;
      _loc3_.o14230(o2239);
      o9883 = o4519.o8116.o11954.o10869();
      if(_loc8_ == 0)
      {
         o9883.o16396 = o17541.o13617("assets.maps.nuclear.doorLights1");
      }
      else
      {
         o9883.o16396 = o17541.o13617("assets.maps.nuclear.doorLights2");
      }
      o9883.position = new o2415();
      o9883.position.x = _loc4_.position.x;
      o9883.position.y = _loc4_.position.y;
      o9883.o16990 = 0.001;
      o9883.rotation = _loc4_.rotation;
      o4519.o8116.o11954.o9226(o9883);
      o3111 = o4519.o8116.o11676.o6798(o9883.o16396.assetID);
      o3111.o11525(o9883);
      o3111.o5388("red");
      super.o10783(param1,_loc3_,_loc4_,o4519.o8116.o11676,false);
      _loc6_ = new o17761(_loc3_.o2535);
      _loc6_.o10827(-30,-30,60,60);
      o16020 = o4519.o8116.o20600.o15803(o8723.trigger,o8723.o18481,o8723.o18481,true);
      o16020.o10289 = _loc6_.id;
      _loc3_.o14230(o16020);
      o16020.o16280(this,o2841.o1516,o2686);
      o16020.o16280(this,o2841.o15204,o6071);
      _loc3_.o16687(_loc4_.rotation);
      _loc3_.o8564(_loc4_.position.x,_loc4_.position.y);
      var _loc7_:Object = o16166.o10842("close");
      o14445 = _loc7_.start;
      o7436 = _loc7_.end;
      o4737 = o14445 + (o7436 - o14445) * 0.5;
      o20488 = 1;
      if(o18829 == 0)
      {
         o20488 = 4;
         o12251();
      }
      if(o6330 > 0)
      {
         o20488 = 2;
         o17911();
      }
   }
   
   public function o2485(param1:int, param2:Number) : void
   {
      if(o20488 == 1)
      {
         if(this.o18829 == param1)
         {
            o12251();
            o1051.o19115(o19046);
            o19046 = o1051.o9310(this,param2,o11841);
         }
      }
   }
   
   public function o11841() : void
   {
      if(o20488 == 1)
      {
         o1612();
      }
   }
   
   public function o16489() : void
   {
      if(o20488 == 1)
      {
         o20488 = 3;
         o12251();
      }
   }
   
   public function o5198() : void
   {
      if(o20488 == 3)
      {
         o20488 = 1;
         o1612();
      }
   }
   
   public function o4398() : void
   {
      o20488 = 4;
      o12251();
      o2959();
   }
   
   private function o12251() : void
   {
      o8478 = true;
      o3111.o5388("green");
      o2239.o8508(0);
      o16166.o12265 = false;
      o16166.o11224(o14445,o7436);
      o16166.o11543();
      o16166.play();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o16977.play(0.3,0,0,false,_loc1_.o10088());
   }
   
   private function o1612() : void
   {
      o8478 = false;
      o3111.o5388("red");
      o2239.o8508(o8723.o10217 ^ o8723.o18481);
      if(o17527.length > 0)
      {
         o16166.o11224(o4737,o7436);
      }
      else
      {
         o16166.o11224(o14445,o7436);
      }
      o16166.o12265 = false;
      o16166.o6343();
      o16166.play();
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o4404.o14791.play(0.3,0,0,false,_loc1_.o10088());
   }
   
   private function o17911() : void
   {
      o8478 = false;
      o3111.o5388("black");
      o2239.o8508(o8723.o10217);
      o16166.o12265 = true;
      o16166.o3030("locked");
      o16166.o11543();
      o16166.play();
   }
   
   private function o14185() : void
   {
      if(o8478 || o20488 != 1)
      {
         return;
      }
      o16166.o11224(o14445,o4737);
      o16166.o12265 = false;
      o16166.o11543();
      o16166.play();
   }
   
   private function o4623() : void
   {
      if(o8478 || o20488 != 1)
      {
         return;
      }
      o16166.o11224(o14445,o4737);
      o16166.o12265 = false;
      o16166.o6343();
      o16166.play();
   }
   
   public function o15667(param1:int) : void
   {
      if(o20488 == 2 && o6330 <= param1)
      {
         o20488 = 1;
         o1612();
         o2959();
      }
   }
   
   private function o2959() : void
   {
      var _loc2_:* = null;
      var _loc3_:* = null;
      if(o5837 != "" && o10567 != "")
      {
         _loc2_ = null;
         _loc3_ = null;
         var _loc5_:int = 0;
         var _loc4_:* = o4519.o9721.o20360.o2013.o6041;
         for each(var _loc1_ in o4519.o9721.o20360.o2013.o6041)
         {
            if(!(_loc2_ != null && _loc3_ != null))
            {
               if(_loc1_.name == o5837)
               {
                  _loc2_ = _loc1_;
               }
               else if(_loc1_.name == o10567)
               {
                  _loc3_ = _loc1_;
               }
               continue;
            }
            break;
         }
         _loc2_.o16079.push(_loc3_);
         _loc3_.o16079.push(_loc2_);
      }
      o5837 == "";
   }
   
   protected function o2686(param1:o4217) : void
   {
      var _loc2_:o18442 = o18442(o4519.o8116.o2996.o14389(param1.o11541.body));
      if(!_loc2_ || !o17527)
      {
         return;
      }
      _loc2_.o16280(this,o14571.o19115,o6521);
      o17527.push(_loc2_);
      if(o17527.length == 1)
      {
         o14185();
      }
   }
   
   protected function o6071(param1:o20312) : void
   {
      var _loc2_:o18442 = o18442(o4519.o8116.o2996.o14389(param1.o11541.body));
      if(!_loc2_ || !o17527)
      {
         return;
      }
      _loc2_.o12657(o14571.o19115,o6521);
      var _loc3_:int = o17527.indexOf(_loc2_);
      if(_loc3_ != -1)
      {
         o17527.splice(_loc3_,1);
         if(o17527.length == 0)
         {
            o4623();
         }
      }
   }
   
   protected function o6521(param1:o7734) : void
   {
      var _loc2_:o18442 = o18442(param1.o11493);
      if(!_loc2_ || !o17527)
      {
         return;
      }
      var _loc3_:int = o17527.indexOf(_loc2_);
      if(_loc3_ != -1)
      {
         o17527.splice(_loc3_,1);
         if(o17527.length == 0)
         {
            o4623();
         }
      }
   }
   
   override public function o19115() : void
   {
      if(o8289())
      {
         return;
      }
      o17527 = null;
      o9883.o19115();
      o9883 = null;
      o3111.o19115();
      o3111 = null;
      o2239 = null;
      o16020 = null;
      o5837 = null;
      o10567 = null;
      super.o19115();
   }
}
