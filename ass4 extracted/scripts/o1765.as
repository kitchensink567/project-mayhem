package
{
   import flash.display.Sprite;
   
   public class o1765 extends Sprite
   {
       
      
      public function o1765()
      {
         super();
      }
      
      public static function o13465() : Class
      {
         return o14052;
      }
   }
}

import flash.events.Event;
import flash.utils.ByteArray;

class o14052 extends o10384
{
   
   public static var o20272:Array = [[1,o17243.o2013,o13351.o10420,"physics"],[2,o17243.o2013,o13351.o10420,"image"],[3,o17243.float,o13351.o5585,"health base (0 for invincible)"],[4,o17243.o14773,o13351.o5585,"moveable"],[5,o17243.float,o13351.o5585,"mass"],[6,o17243.float,o13351.o5585,"linear dampening"],[7,o17243.float,o13351.o5585,"friction"],[8,o17243.float,o13351.o5585,"restitution"],[9,o17243.o14773,o13351.o5585,"fixed rotation"],[10,o17243.o14773,o13351.o5585,"play hit animation"],[11,o17243.o19845,o13351.o5585,"destroy label"],[19,o17243.o14773,o13351.o5585,"loop destroyed"],[12,o17243.o19845,o13351.o5585,"hit label"],[13,o17243.float,o13351.o5585,"loot Chance"],[14,o17243.o14773,o13351.o5585,"show damage states"],[15,o17243.o19845,o13351.o5585,"damage label"],[16,o17243.o14773,o13351.o5585,"explosive"],[17,o17243.o14773,o13351.o5585,"keep physics"],[18,o17243.o14773,o13351.o5585,"rotate to shot"],[20,o17243.o14773,o13351.o5585,"enemies hurt"],[21,o17243.o8809,o13351.o5585,"event id"],[22,o17243.o19845,o13351.o5585,"name"],[23,o17243.o8809,o13351.o5585,"object type"]];
   
   private static var o102:int = 0;
   
   private static var o16691:int = 1;
   
   private static var o3147:int = 2;
   
   private static var o17263:int = 3;
   
   private static var o7834:int = 4;
    
   
   private var o12487:Boolean = false;
   
   private var o11243:Number = 0;
   
   private var o1589:Number = 0;
   
   private var o6643:Boolean = false;
   
   private var o20758:String;
   
   private var o14396:String;
   
   private var o1276:Number = 0;
   
   private var o3344:int = 0;
   
   private var o3051:Boolean = false;
   
   private var o18224:String;
   
   private var o8782:Boolean = false;
   
   private var o7823:Boolean = false;
   
   private var o19974:Boolean = false;
   
   private var o2912:Boolean = false;
   
   private var o8655:Number = 200;
   
   private var o10277:Number = 3000;
   
   private var o6375:Boolean = false;
   
   private var o5647:Number = 0.5;
   
   private var o20649:Number = 0.75;
   
   private var o13743:int = 0;
   
   private var mask:int = 0;
   
   private var o10879:int = 0;
   
   private var o18613:int = 0;
   
   public var o6955:Boolean = false;
   
   function o14052()
   {
      o20758 = "";
      o14396 = "";
      o18224 = "";
      super();
   }
   
   public function o16955(param1:int, param2:ByteArray = null) : void
   {
      var _loc7_:int = param2.readShort();
      var _loc5_:int = param2.readShort();
      var _loc11_:Number = param2.readFloat();
      var _loc14_:Boolean = param2.readByte();
      var _loc12_:* = Number(param2.readFloat());
      var _loc8_:Number = param2.readFloat();
      var _loc15_:Number = param2.readFloat();
      var _loc18_:Number = param2.readFloat();
      var _loc16_:Boolean = param2.readBoolean();
      o6643 = param2.readBoolean();
      o20758 = param2.readUTF();
      o19974 = param2.readBoolean();
      o14396 = param2.readUTF();
      o1276 = param2.readFloat();
      o3051 = param2.readBoolean();
      o18224 = param2.readUTF();
      o2912 = param2.readBoolean();
      o8782 = param2.readBoolean();
      o7823 = param2.readBoolean();
      if(param2.bytesAvailable > 0)
      {
         o6375 = param2.readBoolean();
      }
      if(param2.bytesAvailable > 0)
      {
         o13743 = param2.readInt();
      }
      if(param2.bytesAvailable > 0)
      {
         name = param2.readUTF();
      }
      if(param2.bytesAvailable > 0)
      {
         o18613 = param2.readInt();
      }
      if(_loc12_ == 0)
      {
         _loc12_ = 10;
      }
      var _loc17_:o4332 = o4519.o9721.o12831(_loc5_);
      _loc17_.o16990 = o11381.o12714;
      var _loc3_:o10262 = o4519.o8116.o9869.o1968(!!_loc14_?1:0,_loc8_,false,_loc16_);
      var _loc13_:o13848 = o4519.o9721.o7352[_loc7_];
      var _loc6_:Vector.<o18509> = o4519.o9721.o7963(_loc13_.o6041[0].id);
      var _loc20_:* = 0;
      var _loc22_:int = 0;
      var _loc21_:* = _loc6_;
      for each(var _loc10_ in _loc6_)
      {
         _loc10_.x = _loc10_.x - _loc17_.position.x;
         _loc10_.y = _loc10_.y - _loc17_.position.y;
         _loc10_.rotate(-_loc17_.rotation);
         if(Math.abs(_loc10_.x) > _loc20_)
         {
            _loc20_ = Number(Math.abs(_loc10_.x));
         }
         if(Math.abs(_loc10_.y) > _loc20_)
         {
            _loc20_ = Number(Math.abs(_loc10_.y));
         }
      }
      this.o30 = _loc20_;
      var _loc9_:o17761 = new o17761(_loc3_.o2535);
      _loc9_.o14486(_loc6_);
      mask = o8723.o10217;
      o10879 = 0;
      o10879 = o10879 | o8723.o17798;
      if(o6375)
      {
         o10879 = o10879 | o8723.o17079;
      }
      if(_loc11_ == 0)
      {
         o12487 = true;
      }
      var _loc4_:o4039 = o4519.o8116.o20600.o15803(o6365,mask,o10879,false,_loc15_,_loc18_);
      _loc4_.o10289 = _loc9_.id;
      _loc3_.o14230(_loc4_);
      _loc3_.o16687(_loc17_.rotation);
      _loc3_.o8564(_loc17_.position.x,_loc17_.position.y);
      _loc3_.o7191 = _loc12_;
      var _loc19_:int = o4519.o8116.o20488.o10608.level;
      o1589 = _loc11_;
      o11243 = _loc11_;
      super.o10783(param1,_loc3_,_loc17_,o4519.o8116.o11676);
      o16166.gotoAndStop(0);
      o6955 = false;
      o3344 = -1;
   }
   
   override public function o209(param1:Number, param2:int, param3:o7848, param4:Number = 0, param5:Number = 0) : void
   {
      if(o7823)
      {
         o6691.rotation = param5;
         body.o16687(param5);
      }
      o317(param1);
      o10492();
   }
   
   override public function o5725(param1:o4016) : void
   {
      if(o6955)
      {
         return;
      }
      if(o7823)
      {
         o6691.rotation = param1.o1487;
         body.o16687(param1.o1487);
      }
      o317(param1.amount);
      o10492(param1.o9968);
   }
   
   private function o317(param1:Number) : void
   {
      amount = param1;
      if(o11243 <= 0 && o12487 == false)
      {
         return;
      }
      if(o6643)
      {
         if(o14396 != "")
         {
            o16166.o3030(o14396);
            o16166.o11(o14396);
         }
         else
         {
            o16166.gotoAndPlay(1);
         }
         o16166.o12265 = false;
         o16166.o19926(this,o1490.o16612,function(param1:Event):void
         {
            o16166.gotoAndStop(1);
         });
      }
      if(o12487)
      {
         return;
      }
      o11243 = o11243 - amount;
      if(o11243 <= 0)
      {
         o15777(o17197.o5878);
         o6955 = true;
         o403();
         o4929(0,0,0,0,0,0);
         if(o1276 > o4519.o8116.random.o10418(o5973))
         {
            var o6208:Class = o4519.o8116.o20291["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"];
            var o9135:o6743 = o4519.o8116.o2996.o2998(o6208,[new o18509(body.position.x,body.position.y),o1197.o9344,0]) as o6743;
         }
         o16166.o12265 = false;
         if(o20758 != "")
         {
            o16166.o3030(o20758);
            o16166.o11(o20758);
            if(o19974)
            {
               o16166.o12265 = true;
            }
            else
            {
               o16166.o12265 = false;
            }
         }
         else
         {
            o16166.stop();
         }
         o6691.o16990 = o11381.o6180;
         if(o2912)
         {
            o19344();
         }
         if(o8782 == false)
         {
            body.o19115();
         }
         else
         {
            mask = mask ^ o8723.o17798;
            body.o15838(mask);
         }
         if(o13743 != 0)
         {
            o4519.o13206.dispatchData(new o9534(o13743));
         }
      }
      else if(o3051)
      {
         var o914:int = 0;
         var o10599:Boolean = o16166.o1579(o18224 + "0");
         while(o16166.o1579(o18224 + (String(!!o10599?o914:o914 + 1))))
         {
            o914 = Number(o914) + 1;
         }
         var o2913:int = !!o10599?0:1;
         var o3031:int = (1 - o11243 / o1589) * o914 + o2913;
         if(o3031 != o3344)
         {
            o16166.o3030(o18224 + o3031.toString());
            o16166.o11(o18224 + o3031.toString());
            o16166.o12265 = true;
            o3344 = o3031;
         }
      }
   }
   
   private function o10492(param1:Boolean = false) : void
   {
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      if(!param1)
      {
         var _loc3_:* = o18613;
         switch(_loc3_)
         {
            case o102:
               o4519.o8116.o4812.o4404.o8918.play(o5647,0,0,false,_loc2_.o10088());
               break;
            case o16691:
               o4519.o8116.o4812.o4404.o15709.play(o5647,0,0,false,_loc2_.o10088());
               break;
            case o3147:
               o4519.o8116.o4812.o4404.o6485.play(o5647 + 0.5,0,0,false,_loc2_.o10088());
               break;
            case o17263:
               o4519.o8116.o4812.o4404.o15709.play(o5647,0,0,false,_loc2_.o10088());
               break;
            case o7834:
               o4519.o8116.o4812.o4404.o11304.play(o5647,0,0,false,_loc2_.o10088());
               break;
            default:
               o4519.o8116.o4812.o4404.o11304.play(o5647,0,0,false,_loc2_.o10088());
         }
      }
   }
   
   private function o403() : void
   {
      var _loc1_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      var _loc2_:* = o18613;
      switch(_loc2_)
      {
         case o102:
            o4519.o8116.o4812.o4404.o19817.play(o20649,0,0,false,_loc1_.o10088());
            break;
         case o16691:
            o4519.o8116.o4812.o4404.o11253.play(o20649,0,0,false,_loc1_.o10088());
            break;
         case o3147:
            o4519.o8116.o4812.o4404.o11253.play(o20649,0,0,false,_loc1_.o10088());
            break;
         case o17263:
            o4519.o8116.o4812.o4404.o7259.play(o20649,0,0,false,_loc1_.o10088());
            break;
         case o7834:
            o4519.o8116.o4812.o4404.o492.play(o20649,0,0,false,_loc1_.o10088());
            break;
         default:
            o4519.o8116.o4812.o4404.o19817.play(o20649,0,0,false,_loc1_.o10088());
      }
   }
   
   private function o19344() : void
   {
      var _loc2_:o257 = new o257(this.o6691.position.x,this.o6691.position.y);
      o4519.o8116.o4812.o20325.o19111.play(0.75,0,0,false,_loc2_.o10088());
      var _loc1_:o2130 = o4519.o8116.o13427.o11961(o2130,["assets.effects.explosion1"]) as o2130;
      if(_loc1_ != null)
      {
         _loc1_.o6691.position.x = body.o2697.x;
         _loc1_.o6691.position.y = body.o2697.y;
      }
      o4519.o8116.o2996.o2368([o18442,o10384],body.position.x,body.position.y,o8655,o8723.o17798,o8723.o3969 | o8723.o18180).defer(o13172);
   }
   
   private function o13172(param1:Array) : void
   {
      var _loc4_:* = null;
      var _loc2_:* = null;
      var _loc6_:int = 0;
      var _loc5_:* = param1;
      for each(var _loc3_ in param1)
      {
         _loc4_ = o15460.o4078;
         _loc4_.x = _loc3_.body.o2697.x - body.o2697.x;
         _loc4_.y = _loc3_.body.o2697.y - body.o2697.y;
         _loc2_ = o4016.o10062().initialise(o10277,2,this,null,_loc4_.rotation,0.1);
         o4519.o8116.o8361.o5725(o6270(_loc3_),_loc2_);
      }
   }
}
