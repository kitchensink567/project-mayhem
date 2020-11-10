package
{
   import flash.utils.ByteArray;
   
   public class o8621
   {
       
      
      public var id:int = 0;
      
      public var o19298:Vector.<o6354> = null;
      
      public var o6041:Vector.<o1250> = null;
      
      public var o17242:Vector.<o12217> = null;
      
      public var o7352:Vector.<o6028> = null;
      
      public var o18067:Vector.<int> = null;
      
      public var o7001:Vector.<int> = null;
      
      public var o12584:Vector.<o3003> = null;
      
      public var o7642:Vector.<o5692> = null;
      
      public var o10245:Vector.<o16890> = null;
      
      public var o16530:Vector.<o9884> = null;
      
      public var o19585:Vector.<o5692> = null;
      
      public var o20679:Vector.<o9626> = null;
      
      public var o5067:Vector.<o9237> = null;
      
      public function o8621()
      {
         super();
      }
      
      public function load(param1:ByteArray) : void
      {
         o20878(param1);
      }
      
      public function o20878(param1:ByteArray) : void
      {
         var _loc20_:int = 0;
         var _loc23_:* = null;
         var _loc22_:int = 0;
         var _loc30_:int = 0;
         var _loc29_:* = null;
         var _loc26_:* = null;
         var _loc25_:* = null;
         var _loc13_:int = 0;
         var _loc16_:* = null;
         var _loc7_:* = null;
         var _loc14_:int = 0;
         var _loc8_:int = 0;
         var _loc24_:* = null;
         var _loc21_:* = null;
         var _loc11_:* = null;
         var _loc2_:* = null;
         var _loc28_:* = null;
         o19298 = new Vector.<o6354>();
         o6041 = new Vector.<o1250>();
         o17242 = new Vector.<o12217>();
         o7352 = new Vector.<o6028>();
         o18067 = new Vector.<int>();
         o7001 = new Vector.<int>();
         o12584 = new Vector.<o3003>();
         o7642 = new Vector.<o5692>();
         o10245 = new Vector.<o16890>();
         o16530 = new Vector.<o9884>();
         o19585 = new Vector.<o5692>();
         o5067 = new Vector.<o9237>();
         id = param1.readShort();
         var _loc10_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc10_)
         {
            _loc23_ = new o6354();
            _loc23_.id = param1.readShort();
            _loc23_.o10940 = param1.readShort();
            _loc23_.o16990 = param1.readFloat();
            _loc23_.o15521 = param1.readBoolean();
            _loc23_.o17973 = param1.readBoolean();
            _loc23_.x = param1.readFloat();
            _loc23_.y = param1.readFloat();
            _loc23_.rotation = param1.readFloat();
            _loc23_.scaleX = param1.readFloat();
            _loc23_.scaleY = param1.readFloat();
            _loc23_.o345 = param1.readBoolean();
            _loc23_.o10816 = param1.readBoolean();
            _loc22_ = param1.readShort();
            _loc30_ = param1.readShort();
            o19298.push(_loc23_);
            _loc20_++;
         }
         var _loc9_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc9_)
         {
            _loc29_ = new o1250();
            _loc29_.id = param1.readShort();
            _loc29_.x = param1.readFloat();
            _loc29_.y = param1.readFloat();
            _loc29_.name = param1.readUTF();
            o6041.push(_loc29_);
            _loc20_++;
         }
         var _loc19_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc19_)
         {
            _loc26_ = new o12217();
            _loc26_.o12395 = param1.readShort();
            _loc26_.o17768 = param1.readShort();
            _loc26_.o323 = param1.readFloat();
            o17242.push(_loc26_);
            _loc20_++;
         }
         var _loc27_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc27_)
         {
            _loc25_ = new o6028();
            _loc25_.id = param1.readShort();
            _loc25_.o6041 = new Vector.<int>();
            _loc9_ = param1.readShort();
            _loc13_ = 0;
            while(_loc13_ < _loc9_)
            {
               _loc25_.o6041.push(param1.readShort());
               _loc13_++;
            }
            o7352.push(_loc25_);
            _loc20_++;
         }
         var _loc3_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc3_)
         {
            o18067.push(param1.readShort());
            _loc20_++;
         }
         var _loc17_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc17_)
         {
            o7001.push(param1.readShort());
            _loc20_++;
         }
         var _loc18_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc18_)
         {
            _loc16_ = new o3003();
            _loc16_.id = param1.readShort();
            _loc16_.x = param1.readFloat();
            _loc16_.y = param1.readFloat();
            o12584.push(_loc16_);
            _loc20_++;
         }
         var _loc31_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc31_)
         {
            _loc7_ = new o5692();
            _loc7_.id = param1.readShort();
            _loc7_.x = param1.readFloat();
            _loc7_.y = param1.readFloat();
            _loc7_.o14765 = param1.readShort();
            if(_loc7_.o14765 != 0)
            {
               _loc14_ = param1.readShort();
               _loc7_.o19964 = new ByteArray();
               _loc8_ = 0;
               while(_loc8_ < _loc14_)
               {
                  _loc7_.o19964.writeByte(param1.readByte());
                  _loc8_++;
               }
               _loc7_.o19964.position = 0;
            }
            o7642.push(_loc7_);
            _loc20_++;
         }
         var _loc6_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc6_)
         {
            _loc24_ = new o16890();
            _loc24_.id = param1.readShort();
            _loc24_.display = param1.readShort();
            _loc24_.o15295 = param1.readShort();
            _loc24_.o997 = param1.readShort();
            _loc24_.o7449 = param1.readShort();
            o10245.push(_loc24_);
            _loc20_++;
         }
         var _loc4_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc4_)
         {
            _loc21_ = new o9884();
            _loc21_.id = param1.readShort();
            _loc21_.x = param1.readFloat();
            _loc21_.y = param1.readFloat();
            o16530.push(_loc16_);
            _loc20_++;
         }
         var _loc12_:int = param1.readShort();
         _loc20_ = 0;
         while(_loc20_ < _loc12_)
         {
            _loc11_ = new o5692();
            _loc11_.id = param1.readShort();
            _loc11_.x = param1.readFloat();
            _loc11_.y = param1.readFloat();
            _loc11_.o14765 = param1.readShort();
            if(_loc11_.o14765 != 0)
            {
               _loc14_ = param1.readShort();
               _loc11_.o19964 = new ByteArray();
               _loc8_ = 0;
               while(_loc8_ < _loc14_)
               {
                  _loc11_.o19964.writeByte(param1.readByte());
                  _loc8_++;
               }
               _loc11_.o19964.position = 0;
            }
            o19585.push(_loc11_);
            _loc20_++;
         }
         o20679 = new Vector.<o9626>();
         var _loc15_:int = 0;
         _loc15_ = param1.readByte();
         _loc20_ = 0;
         while(_loc20_ < _loc15_)
         {
            _loc2_ = new o9626();
            _loc2_.load(param1);
            o20679.push(_loc2_);
            _loc20_++;
         }
         var _loc5_:int = 0;
         try
         {
            _loc5_ = param1.readShort();
         }
         catch(o19631:Error)
         {
         }
         _loc20_ = 0;
         while(_loc20_ < _loc5_)
         {
            _loc28_ = new o9237();
            _loc28_.o15884 = param1.readUTF();
            _loc28_.x = param1.readInt() * 10;
            _loc28_.y = param1.readInt() * 10;
            o5067.push(_loc28_);
            _loc20_++;
         }
      }
   }
}
