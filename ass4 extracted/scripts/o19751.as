package
{
   import flash.display.Sprite;
   
   public class o19751 extends Sprite
   {
       
      
      public function o19751()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o10851;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o10851 extends o3047
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"image"],[2,o17243.o2013,o13351.o10420,"spawn trigger"],[3,o17243.float,o13351.o10420,"starting difficulty"],[4,o17243.o19845,o13351.o10420,"name"]];
    
   
   private var o20072:int = 0;
   
   private var o6243:int = 5;
   
   private var o11243:int = 0;
   
   private var o1589:int = 0;
   
   private var o9325:int = 0;
   
   private var o9014:int = 10;
   
   private var o5959:int = 0;
   
   public var o12555:int = 0;
   
   public var o2840:int = 0;
   
   private var o1198:int;
   
   private var o16246:Number = 8;
   
   private var o13025:Number = 0;
   
   private var o7230:Number = 0;
   
   public var o17884:Number = 0;
   
   private var o11778:Number = 0;
   
   private var o12227:Boolean = false;
   
   private var o8289:Boolean = false;
   
   private var o406:o10262;
   
   private var o6691:o4332;
   
   private var o10140:o4332;
   
   private var o16166:o7331;
   
   private var o18235:o18442 = null;
   
   private var o12143:Array;
   
   private var o9408:Array;
   
   private var o17018:o18509;
   
   private var o12445:Array;
   
   private var o16237:String;
   
   private var o17503:String;
   
   private var o19706:String;
   
   private var o12896:int = 0;
   
   private const o9505:int = 5;
   
   function o10851()
   {
      o12143 = [];
      o9408 = [];
      o17018 = new o18509();
      o12445 = [1,5,10,20,40,80];
      o16237 = "assets.enemies.zombieNest.nestTop";
      o17503 = "assets.enemies.zombieNest.nestBase";
      o19706 = "assets.enemies.zombieNest.egg";
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc4_:* = undefined;
      var _loc9_:* = undefined;
      var _loc8_:* = null;
      var _loc3_:* = null;
      o1198 = param2.readShort();
      var _loc6_:int = param2.readShort();
      var _loc5_:Number = param2.readFloat();
      if(_loc5_ != 0)
      {
         o16246 = _loc5_;
      }
      name = param2.readUTF();
      if(_loc6_ != 0)
      {
         o406 = o4519.o8116.o9869.o1968(0,0,false);
         _loc4_ = o4519.o9721.o7963(o4519.o9721.o7352[_loc6_].o6041[0].id);
         _loc9_ = o12075.o7521(_loc4_);
         var _loc11_:int = 0;
         var _loc10_:* = _loc9_;
         for each(var _loc7_ in _loc9_)
         {
            _loc8_ = new o17761(o406.o2535);
            _loc8_.o14486(_loc7_);
            _loc3_ = o4519.o8116.o20600.o15803(o8723.o14409,o17517.o6365,o17517.o6365,true);
            _loc3_.o10289 = _loc8_.id;
            o406.o14230(_loc3_);
         }
         o406.o16280(this,o8273.o7087,o16379);
      }
      super.o949(param1);
      o10413 = false;
      o6691 = o4519.o9721.o12831(o1198);
      o6691.o16396 = o17541.o13617(o17503);
      o6691.o16990 = o11381.o2276;
      o10140 = o4519.o8116.o11954.o10869();
      o10140.o16396 = o17541.o13617(o16237);
      o10140.position = o6691.position;
      o10140.rotation = o6691.rotation;
      o10140.o16990 = o11381.o7748;
      o4519.o8116.o11954.o9226(o10140);
      o5959 = 0;
      o20072 = 0;
      o6243 = 5;
      o9408 = [];
      o16166 = o4519.o8116.o11676.o6798(null);
      o16166.o11525(o6691);
      o16166.o10589(o17503);
      o16166.o5388("ok");
      o16166.o12265 = false;
      o17884 = 24;
      o4519.o13206.o16280(this,o16450.o9745,o7062);
   }
   
   private function o7062(param1:Event) : void
   {
      o18235 = o3370(o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.enemies.PlaceHolderEnemy"],0,new o18509(o6691.position.x,o6691.position.y),0,0,true,false,false);
      if(!o89())
      {
         o16246 = o16246 + o10176.o6572() * 2;
      }
      else
      {
         o16246 = o16246 + o10176.o6572();
      }
      o1589 = 3000 * o10176.o6572();
      o11243 = 3000 * o10176.o6572();
      o11778 = 25 * o10176.o6572();
      o9325 = o1051.o4767(this,0.5,o7664,0,true);
   }
   
   public function o14101() : Boolean
   {
      return this.o8289;
   }
   
   private function o7664() : void
   {
      var _loc2_:* = null;
      var _loc3_:* = NaN;
      var _loc4_:* = NaN;
      var _loc1_:int = 0;
      if(o12227)
      {
         o17884 = o17884 + 0.5;
         if(o17884 > 25)
         {
            if(o12896 >= 5)
            {
               o12227 = false;
               return;
            }
            o10540();
            o12896 = Number(o12896) + 1;
            o16246 = o16246 + 0.45;
            o17884 = 0;
         }
         if(o12143.length > 0)
         {
            if(o4519.o13206.o2685.o6370)
            {
               _loc2_ = new ByteArray();
               _loc2_.writeInt(o4519.o8116.o14443.o20753[o12143[0].type]);
               _loc2_.writeInt(o12143[0].grade);
               _loc2_.writeFloat(o12143[0].x);
               _loc2_.writeFloat(o12143[0].y);
               dispatchData(new o2149(this,_loc2_));
            }
         }
      }
      if(o18235)
      {
         _loc3_ = 0;
         _loc4_ = 0;
         _loc1_ = 0;
         while(_loc1_ < o9408.length)
         {
            _loc3_ = Number(_loc3_ + o9408[_loc1_].o11243);
            _loc4_ = Number(_loc4_ + o9408[_loc1_].o1589);
            _loc1_++;
         }
         o18235.o14116(_loc4_);
         o18235.o2287(_loc3_);
      }
   }
   
   private function o7107() : void
   {
      var _loc3_:int = 0;
      var _loc5_:* = null;
      var _loc1_:int = 0;
      var _loc4_:* = null;
      o17018.x = o6691.position.x;
      o17018.y = o6691.position.y;
      var _loc2_:* = 40;
      _loc3_ = 0;
      while(_loc3_ < o6243)
      {
         _loc5_ = o15460.o16789;
         _loc5_.x = 1 * _loc2_;
         _loc5_.y = 0;
         _loc5_.rotate(_loc3_ * 3.14159265358979 * 0.4);
         _loc1_ = o20712;
         o20712 = Number(o20712) + 1;
         _loc4_ = o4519.o8116.o2996.o2998(o4382,[o17018.x + _loc5_.x,o17018.y + _loc5_.y],_loc1_) as o4382;
         _loc4_.o16280(this,o14571.o19115,o14245);
         o9408.push(_loc4_);
         _loc3_++;
      }
   }
   
   private function o89() : Boolean
   {
      return o4519.o13206.o4326 == 2?true:false;
   }
   
   private function o14245(param1:Event = null) : void
   {
      o6243 = Number(o6243) - 1;
      if(o6243 <= 0)
      {
         o9225();
         o8289 = true;
      }
   }
   
   override public function o20630(param1:int, param2:ByteArray) : void
   {
      param2.position = 0;
      var _loc6_:int = param2.readInt();
      var _loc5_:int = param2.readInt();
      var _loc3_:Number = param2.readFloat();
      var _loc4_:Number = param2.readFloat();
      o3370(o4519.o8116.o14443.o8635[_loc6_],_loc5_,new o18509(_loc3_,_loc4_),o2840,o12555,false,true,false);
   }
   
   override protected function o6249(param1:o18442) : void
   {
      if(param1 != null)
      {
         param1.o16280(this,o14571.o19115,o10014);
         o5959 = Number(o5959) + 1;
         if(o4519.o13206.o2685.o6370)
         {
            o12143.shift();
         }
         dispatchData(new o6961(param1));
      }
   }
   
   private function o16379(param1:o663) : void
   {
      if(o406)
      {
         o406.o19115();
      }
      o406 = null;
      o17386();
   }
   
   public function o17386() : void
   {
      o12227 = true;
      o7107();
   }
   
   private function o10014(param1:Event) : void
   {
      o5959 = Number(o5959) - 1;
   }
   
   private function o10540() : void
   {
      var _loc9_:int = 0;
      var _loc8_:* = null;
      if(o4519.o13206.o2685.o6370 == false)
      {
         return;
      }
      var _loc12_:int = 0;
      var _loc4_:int = 0;
      var _loc10_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:int = 0;
      var _loc6_:int = 0;
      var _loc5_:int = o16246 * (o4519.o8116.random.o10418(o20072) * 0.4 + 0.8);
      o20072 = Number(o20072) + 1;
      while(_loc5_ >= o12445[5])
      {
         _loc5_ = _loc5_ - o12445[5] * 0.5;
         _loc6_++;
      }
      while(_loc5_ >= o12445[3])
      {
         _loc5_ = _loc5_ - o12445[3] * 0.5;
         _loc7_++;
      }
      while(_loc5_ >= o12445[1])
      {
         _loc5_ = _loc5_ - o12445[1] * 0.5;
         _loc4_++;
      }
      while(_loc5_ >= o12445[0])
      {
         _loc5_ = _loc5_ - o12445[0];
         _loc12_++;
      }
      var _loc3_:Vector.<o13304> = new Vector.<o13304>();
      _loc3_.push(new o13304(0,_loc12_));
      _loc3_.push(new o13304(1,_loc4_));
      _loc3_.push(new o13304(2,_loc10_));
      _loc3_.push(new o13304(3,_loc7_));
      _loc3_.push(new o13304(4,_loc6_));
      _loc3_.push(new o13304(5,_loc1_));
      var _loc2_:Vector.<o20743> = o10176.o10383(_loc3_,10,0);
      _loc9_ = 0;
      while(_loc9_ < _loc2_.length)
      {
         _loc8_ = new o18509(o17018.x + (o20384.random() * 10 - 5),o17018.y + (o20384.random() * 10 - 5));
         o12143.push({
            "type":_loc2_[_loc9_].o18948,
            "grade":_loc2_[_loc9_].grade,
            "x":o17018.x,
            "y":o17018.y
         });
         _loc9_++;
      }
      var _loc11_:o257 = new o257(o17018.x,o17018.y);
      o4519.o8116.o4812.o14142.o16537.play(1,0,0,false,_loc11_.o10088(),0,9);
   }
   
   private function o9225() : void
   {
      var _loc1_:* = null;
      var _loc2_:int = 0;
      o16166.o5388("notok");
      o16166.o12265 = false;
      if(o10140)
      {
         o4519.o8116.o11954.o17454(o10140);
         o10140.o19115();
      }
      o10140 = null;
      _loc2_ = 0;
      while(_loc2_ < 4)
      {
         _loc1_ = o4519.o8116.o13427.o11961(o2130,["assets.enemies.eggBurst"]) as o2130;
         if(_loc1_ != null)
         {
            _loc1_.o6691.position.x = o17018.x;
            _loc1_.o6691.position.y = o17018.y;
            _loc1_.o6691.rotation = _loc2_ * (3.14159265358979 * 0.5);
         }
         _loc2_++;
      }
      if(o11778 != 0)
      {
         o4519.o32.o10296(o11778);
      }
      if(o18235)
      {
         o18235.o19115();
      }
      o18235 = null;
      if(o406)
      {
         o406.o19115();
      }
      o406 = null;
      o1051.o19115(o9325);
   }
   
   override public function o19115() : void
   {
      super.o19115();
   }
}
