package
{
   use namespace b2internal;
   
   public class o12441
   {
      
      private static var o5508:o18851 = new o18851();
      
      private static var o18333:o12362 = new o12362();
      
      private static var o17558:o12048 = new o12048();
      
      private static var o738:o12048 = new o12048();
      
      private static var o5816:o18851 = new o18851();
      
      private static var o17924:Vector.<o5173> = new Vector.<o5173>();
      
      private static var o2030:o6532 = new o6532(0.5,0.8,0.8);
      
      private static var o17221:Boolean;
      
      private static var o15732:Boolean;
      
      public static const o2462:int = 1;
      
      public static const o8740:int = 2;
       
      
      private var o5113:Array = null;
      
      private var o6365:uint;
      
      private var mask:uint;
      
      private var o19914:Vector.<o5173>;
      
      b2internal var o20198:int;
      
      b2internal var o8835:o19737;
      
      private var o5390:o13976;
      
      private var o20550:o586;
      
      b2internal var o5970:o5173;
      
      private var o5350:o2748;
      
      b2internal var o2410:o16520;
      
      private var o3965:int;
      
      b2internal var o13994:int;
      
      private var o17068:int;
      
      private var o20786:o10187;
      
      private var o9558:int;
      
      private var o6806:o20021;
      
      private var o1394:Boolean;
      
      b2internal var o20326:o5173;
      
      private var o20719:o6087;
      
      private var o16449:o13202;
      
      private var o9217:Number;
      
      public function o12441()
      {
         o19914 = new Vector.<o5173>();
         o8835 = new o19737();
         o5390 = new o13976();
         o20550 = new o586();
         super();
      }
      
      public function initialise(param1:o20021, param2:Boolean) : void
      {
         o20719 = null;
         o16449 = null;
         o5970 = null;
         o2410 = null;
         o5350 = null;
         o20786 = null;
         o3965 = 0;
         o13994 = 0;
         o17068 = 0;
         o9558 = 0;
         o17221 = true;
         o15732 = true;
         o1394 = param2;
         o6806 = param1;
         o9217 = 0;
         o8835.o20914 = this;
         var _loc3_:o10537 = new o10537();
         o20326 = o4974(_loc3_);
      }
      
      public function o9719(param1:o6087) : void
      {
         o20719 = param1;
      }
      
      public function o2288(param1:o8168) : void
      {
         o8835.o3733 = param1;
      }
      
      public function o2970(param1:o14709) : void
      {
         o8835.o16998 = param1;
      }
      
      public function o609(param1:o13202) : void
      {
         o16449 = param1;
      }
      
      public function o9180(param1:o13430) : void
      {
         var _loc4_:* = null;
         var _loc2_:* = null;
         var _loc3_:o13430 = o8835.o18566;
         o8835.o18566 = param1;
         _loc4_ = o5970;
         while(_loc4_)
         {
            _loc2_ = _loc4_.o9991;
            while(_loc2_)
            {
               _loc2_.o17102 = param1.o3221(_loc3_.o12025(_loc2_.o17102),_loc2_);
               _loc2_ = _loc2_.o1570;
            }
            _loc4_ = _loc4_.o1570;
         }
      }
      
      public function o17106() : void
      {
         o8835.o18566.o17106();
      }
      
      public function o14511() : int
      {
         return o8835.o18566.o14511();
      }
      
      public function o4974(param1:o10537) : o5173
      {
         if(o3773() == true)
         {
            return null;
         }
         var _loc2_:o5173 = new o5173(param1,this);
         _loc2_.o3174 = null;
         _loc2_.o1570 = o5970;
         if(o5970)
         {
            o5970.o3174 = _loc2_;
         }
         o5970 = _loc2_;
         o3965 = o3965 + 1;
         return _loc2_;
      }
      
      public function o11509(param1:o5173) : void
      {
         var _loc3_:* = null;
         var _loc8_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = null;
         if(o3773() == true)
         {
            return;
         }
         var _loc9_:o20788 = param1.o5350;
         while(_loc9_)
         {
            _loc3_ = _loc9_;
            _loc9_ = _loc9_.o3176;
            if(o20719)
            {
               o20719.o17440(_loc3_.o10457);
            }
            o6647(_loc3_.o10457);
         }
         var _loc6_:o5528 = param1.o20786;
         while(_loc6_)
         {
            _loc8_ = _loc6_;
            _loc6_ = _loc6_.o1408;
            _loc8_.o19954.o13086(param1);
         }
         var _loc5_:o684 = param1.o2410;
         while(_loc5_)
         {
            _loc7_ = _loc5_;
            _loc5_ = _loc5_.o3176;
            o8835.o18143(_loc7_.o9663);
         }
         param1.o2410 = null;
         var _loc2_:o11359 = param1.o9991;
         while(_loc2_)
         {
            _loc4_ = _loc2_;
            _loc2_ = _loc2_.o1570;
            if(o20719)
            {
               o20719.o18995(_loc4_);
            }
            _loc4_.o13799(o8835.o18566);
            _loc4_.o18143();
         }
         param1.o9991 = null;
         param1.o2060 = 0;
         if(param1.o3174)
         {
            param1.o3174.o1570 = param1.o1570;
         }
         if(param1.o1570)
         {
            param1.o1570.o3174 = param1.o3174;
         }
         if(param1 == o5970)
         {
            o5970 = param1.o1570;
         }
         o3965 = o3965 - 1;
      }
      
      public function o1465(param1:o18988) : o2748
      {
         var _loc4_:* = null;
         var _loc2_:o2748 = o2748.o6611(param1,null);
         _loc2_.o3174 = null;
         _loc2_.o1570 = o5350;
         if(o5350)
         {
            o5350.o3174 = _loc2_;
         }
         o5350 = _loc2_;
         o17068 = o17068 + 1;
         _loc2_.o16138.o10457 = _loc2_;
         _loc2_.o16138.o3316 = _loc2_.o4919;
         _loc2_.o16138.o3388 = null;
         _loc2_.o16138.o3176 = _loc2_.o8708.o5350;
         if(_loc2_.o8708.o5350)
         {
            _loc2_.o8708.o5350.o3388 = _loc2_.o16138;
         }
         _loc2_.o8708.o5350 = _loc2_.o16138;
         _loc2_.o4583.o10457 = _loc2_;
         _loc2_.o4583.o3316 = _loc2_.o8708;
         _loc2_.o4583.o3388 = null;
         _loc2_.o4583.o3176 = _loc2_.o4919.o5350;
         if(_loc2_.o4919.o5350)
         {
            _loc2_.o4919.o5350.o3388 = _loc2_.o4583;
         }
         _loc2_.o4919.o5350 = _loc2_.o4583;
         var _loc5_:o5173 = param1.o6133;
         var _loc3_:o5173 = param1.o3428;
         if(param1.o16915 == false)
         {
            _loc4_ = _loc3_.o926();
            while(_loc4_)
            {
               if(_loc4_.o3316 == _loc5_)
               {
                  _loc4_.o9663.o1389();
               }
               _loc4_ = _loc4_.o3176;
            }
         }
         return _loc2_;
      }
      
      public function o6647(param1:o2748) : void
      {
         var _loc3_:* = null;
         var _loc5_:Boolean = param1.o1969;
         if(param1.o3174)
         {
            param1.o3174.o1570 = param1.o1570;
         }
         if(param1.o1570)
         {
            param1.o1570.o3174 = param1.o3174;
         }
         if(param1 == o5350)
         {
            o5350 = param1.o1570;
         }
         var _loc4_:o5173 = param1.o8708;
         var _loc2_:o5173 = param1.o4919;
         _loc4_.o17676(true);
         _loc2_.o17676(true);
         if(param1.o16138.o3388)
         {
            param1.o16138.o3388.o3176 = param1.o16138.o3176;
         }
         if(param1.o16138.o3176)
         {
            param1.o16138.o3176.o3388 = param1.o16138.o3388;
         }
         if(param1.o16138 == _loc4_.o5350)
         {
            _loc4_.o5350 = param1.o16138.o3176;
         }
         param1.o16138.o3388 = null;
         param1.o16138.o3176 = null;
         if(param1.o4583.o3388)
         {
            param1.o4583.o3388.o3176 = param1.o4583.o3176;
         }
         if(param1.o4583.o3176)
         {
            param1.o4583.o3176.o3388 = param1.o4583.o3388;
         }
         if(param1.o4583 == _loc2_.o5350)
         {
            _loc2_.o5350 = param1.o4583.o3176;
         }
         param1.o4583.o3388 = null;
         param1.o4583.o3176 = null;
         o2748.o18143(param1,null);
         o17068 = o17068 - 1;
         if(_loc5_ == false)
         {
            _loc3_ = _loc2_.o926();
            while(_loc3_)
            {
               if(_loc3_.o3316 == _loc4_)
               {
                  _loc3_.o9663.o1389();
               }
               _loc3_ = _loc3_.o3176;
            }
         }
      }
      
      public function o16230(param1:o10187) : o10187
      {
         param1.o1570 = o20786;
         param1.o3174 = null;
         o20786 = param1;
         param1.o20914 = this;
         o9558 = Number(o9558) + 1;
         return param1;
      }
      
      public function o16354(param1:o10187) : void
      {
         if(param1.o3174)
         {
            param1.o3174.o1570 = param1.o1570;
         }
         if(param1.o1570)
         {
            param1.o1570.o3174 = param1.o3174;
         }
         if(o20786 == param1)
         {
            o20786 = param1.o1570;
         }
         o9558 = Number(o9558) - 1;
      }
      
      public function o12410(param1:o10187) : o10187
      {
         if(param1.o20914 != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.o1570 = o20786;
         param1.o3174 = null;
         if(o20786)
         {
            o20786.o3174 = param1;
         }
         o20786 = param1;
         o9558 = o9558 + 1;
         param1.o20914 = this;
         return param1;
      }
      
      public function o8353(param1:o10187) : void
      {
         param1.o13552();
         if(param1.o1570)
         {
            param1.o1570.o3174 = param1.o3174;
         }
         if(param1.o3174)
         {
            param1.o3174.o1570 = param1.o1570;
         }
         if(param1 == o20786)
         {
            o20786 = param1.o1570;
         }
         o9558 = o9558 - 1;
      }
      
      public function o18620(param1:Boolean) : void
      {
         o17221 = param1;
      }
      
      public function o6222(param1:Boolean) : void
      {
         o15732 = param1;
      }
      
      public function o16069() : int
      {
         return o3965;
      }
      
      public function o9482() : int
      {
         return o17068;
      }
      
      public function o1555() : int
      {
         return o13994;
      }
      
      public function o9242(param1:o20021) : void
      {
         o6806 = param1;
      }
      
      public function o40() : o20021
      {
         return o6806;
      }
      
      public function o11956() : o5173
      {
         return o20326;
      }
      
      public function o15637(param1:Number, param2:int, param3:int) : void
      {
         if(o20198 & 1)
         {
            o8835.o16758();
            o20198 = o20198 & ~1;
         }
         o20198 = o20198 | 2;
         var _loc4_:o18851 = o5508;
         _loc4_.o10009 = param1;
         _loc4_.o6387 = param2;
         _loc4_.o15205 = param3;
         if(param1 > 0)
         {
            _loc4_.o4515 = 1 / param1;
         }
         else
         {
            _loc4_.o4515 = 0;
         }
         _loc4_.o12930 = o9217 * param1;
         _loc4_.o1821 = o17221;
         o8835.o9284();
         if(_loc4_.o10009 > 0)
         {
            o6052(_loc4_);
         }
         if(o15732 && _loc4_.o10009 > 0)
         {
            o17475(_loc4_);
         }
         if(_loc4_.o10009 > 0)
         {
            o9217 = _loc4_.o4515;
         }
         o20198 = o20198 & ~2;
      }
      
      public function o4413() : void
      {
         var _loc1_:* = null;
         _loc1_ = o5970;
         while(_loc1_)
         {
            _loc1_.o10225.o14195();
            _loc1_.o12252 = 0;
            _loc1_ = _loc1_.o1570;
         }
      }
      
      public function o15939() : void
      {
         var _loc9_:int = 0;
         var _loc11_:* = null;
         var _loc13_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc19_:* = null;
         var _loc15_:* = null;
         var _loc1_:* = null;
         var _loc22_:* = null;
         var _loc6_:* = null;
         var _loc5_:* = null;
         var _loc21_:* = null;
         var _loc4_:* = null;
         var _loc14_:* = null;
         if(o16449 == null)
         {
            return;
         }
         o16449.o1231.graphics.clear();
         var _loc7_:uint = o16449.o19611();
         var _loc12_:o20021 = new o20021();
         var _loc8_:o20021 = new o20021();
         var _loc18_:o20021 = new o20021();
         var _loc20_:o1693 = new o1693();
         var _loc10_:o1693 = new o1693();
         var _loc17_:Array = [new o20021(),new o20021(),new o20021(),new o20021()];
         var _loc16_:o6532 = new o6532(0,0,0);
         if(_loc7_ & o13202.o7935)
         {
            _loc11_ = o5970;
            while(_loc11_)
            {
               _loc15_ = _loc11_.o7718;
               _loc13_ = _loc11_.o7117();
               while(_loc13_)
               {
                  _loc2_ = _loc13_.o4861();
                  if(_loc11_.o20329() == false)
                  {
                     _loc16_.o18596(0.5,0.5,0.3);
                     o19311(_loc2_,_loc15_,_loc16_);
                  }
                  else if(_loc11_.o20697() == o5173.o16684)
                  {
                     _loc16_.o18596(0.5,0.9,0.5);
                     o19311(_loc2_,_loc15_,_loc16_);
                  }
                  else if(_loc11_.o20697() == o5173.o20611)
                  {
                     _loc16_.o18596(0.5,0.5,0.9);
                     o19311(_loc2_,_loc15_,_loc16_);
                  }
                  else if(_loc11_.o4675() == false)
                  {
                     _loc16_.o18596(0.6,0.6,0.6);
                     o19311(_loc2_,_loc15_,_loc16_);
                  }
                  else
                  {
                     _loc16_.o18596(0.9,0.7,0.7);
                     o19311(_loc2_,_loc15_,_loc16_);
                  }
                  _loc13_ = _loc13_.o1570;
               }
               _loc11_ = _loc11_.o1570;
            }
         }
         if(_loc7_ & o13202.o11298)
         {
            _loc3_ = o5350;
            while(_loc3_)
            {
               o17474(_loc3_);
               _loc3_ = _loc3_.o1570;
            }
         }
         if(_loc7_ & o13202.o50)
         {
            _loc1_ = o20786;
            while(_loc1_)
            {
               _loc1_.o13858(o16449);
               _loc1_ = _loc1_.o1570;
            }
         }
         if(_loc7_ & o13202.o17887)
         {
            _loc16_.o18596(0.3,0.9,0.9);
            _loc22_ = o8835.o2410;
            while(_loc22_)
            {
               _loc6_ = _loc22_.o18972();
               _loc5_ = _loc22_.o13950();
               _loc21_ = _loc6_.o11871().o9628();
               _loc4_ = _loc5_.o11871().o9628();
               o16449.o18480(_loc21_,_loc4_,_loc16_);
               _loc22_ = _loc22_.o10535();
            }
         }
         if(_loc7_ & o13202.o9478)
         {
            _loc19_ = o8835.o18566;
            _loc17_ = [new o20021(),new o20021(),new o20021(),new o20021()];
            _loc11_ = o5970;
            while(_loc11_)
            {
               if(_loc11_.o20329() != false)
               {
                  _loc13_ = _loc11_.o7117();
                  while(_loc13_)
                  {
                     _loc14_ = _loc19_.o12025(_loc13_.o17102);
                     _loc17_[0].o18596(_loc14_.o8628.x,_loc14_.o8628.y);
                     _loc17_[1].o18596(_loc14_.o18391.x,_loc14_.o8628.y);
                     _loc17_[2].o18596(_loc14_.o18391.x,_loc14_.o18391.y);
                     _loc17_[3].o18596(_loc14_.o8628.x,_loc14_.o18391.y);
                     o16449.o20748(_loc17_,4,_loc16_);
                     _loc13_ = _loc13_.o10535();
                  }
               }
               _loc11_ = _loc11_.o10535();
            }
         }
         if(_loc7_ & o13202.o17540)
         {
            _loc11_ = o5970;
            while(_loc11_)
            {
               _loc15_ = o18333;
               _loc15_.o13707 = _loc11_.o7718.o13707;
               _loc15_.position = _loc11_.o9798();
               o16449.o20731(_loc15_);
               _loc11_ = _loc11_.o1570;
            }
         }
      }
      
      public function o3364(param1:Function, param2:o1693) : void
      {
         o5734 = param1;
         o3664 = param2;
         o11647 = function(param1:*):Boolean
         {
            return o5734(o15697.o3272(param1));
         };
         var o15697:o13430 = o8835.o18566;
         o15697.o9501(o11647,o3664);
      }
      
      public function o4263(param1:Function, param2:o17586, param3:o12362 = null) : void
      {
         o5734 = param1;
         o10289 = param2;
         transform = param3;
         o11647 = function(param1:*):Boolean
         {
            var _loc2_:o11359 = o15697.o3272(param1) as o11359;
            if(o17586.o15642(o10289,transform,_loc2_.o4861(),_loc2_.o15686().o13749()))
            {
               return o5734(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            var transform:o12362 = new o12362();
            transform.o4911();
         }
         var o15697:o13430 = o8835.o18566;
         var o3664:o1693 = new o1693();
         o10289.o7379(o3664,transform);
         o15697.o9501(o11647,o3664);
      }
      
      public function o11601(param1:Function, param2:o20021) : void
      {
         o5734 = param1;
         o12676 = param2;
         o11647 = function(param1:*):Boolean
         {
            var _loc2_:o11359 = o15697.o3272(param1) as o11359;
            if(_loc2_.o14704(o12676))
            {
               return o5734(_loc2_);
            }
            return true;
         };
         var o15697:o13430 = o8835.o18566;
         var o3664:o1693 = new o1693();
         o3664.o8628.o18596(o12676.x - 0.005,o12676.y - 0.005);
         o3664.o18391.o18596(o12676.x + 0.005,o12676.y + 0.005);
         o15697.o9501(o11647,o3664);
      }
      
      private function o7749(param1:o13148, param2:*) : Number
      {
         var _loc3_:o13430 = o8835.o18566;
         var _loc5_:* = _loc3_.o3272(param2);
         var _loc4_:o11359 = _loc5_ as o11359;
         if((_loc4_.o13437() || _loc4_.o18997().o11755 & mask) == 0 || (o6365 & _loc4_.o18997().o251) == 0)
         {
            return param1.o544;
         }
         o5113.push([_loc5_,_loc4_]);
         return param1.o544;
      }
      
      public function o4566(param1:Function, param2:o20021, param3:o20021, param4:uint, param5:uint) : void
      {
         var _loc7_:o13430 = o8835.o18566;
         var _loc8_:o14303 = new o14303();
         o5113 = [];
         this.o6365 = param4;
         this.mask = param5;
         var _loc6_:o13148 = new o13148(param2,param3);
         var _loc9_:o14883 = new o14883(o5113,param2,param3,_loc8_,param1,_loc6_);
         _loc7_.o4566(o7749,_loc9_.o16612,_loc6_);
      }
      
      public function o13874(param1:o20021, param2:o20021, param3:uint, param4:uint) : o11359
      {
         o11389 = param1;
         o13493 = param2;
         o6365 = param3;
         mask = param4;
         o11555 = function(param1:o11359, param2:o20021, param3:o20021, param4:Number):Number
         {
            if(param4 <= o6338)
            {
               o6338 = param4;
               o19613 = param1;
            }
            return o6338;
         };
         var o6338:Number = 1;
         o4566(o11555,o11389,o13493,o6365,mask);
         return o19613;
      }
      
      public function o14032(param1:o20021, param2:o20021, param3:uint, param4:uint) : Vector.<o11359>
      {
         o11389 = param1;
         o13493 = param2;
         o6365 = param3;
         mask = param4;
         o7676 = function(param1:o11359, param2:o20021, param3:o20021, param4:Number):Number
         {
            o19613[o19613.length] = param1;
            return 1;
         };
         var o19613:Vector.<o11359> = new Vector.<o11359>();
         o4566(o7676,o11389,o13493,o6365,mask);
         return o19613;
      }
      
      public function o13137() : o5173
      {
         return o5970;
      }
      
      public function o17545() : o2748
      {
         return o5350;
      }
      
      public function o926() : o16520
      {
         return o2410;
      }
      
      public function o3773() : Boolean
      {
         return (o20198 & 2) > 0;
      }
      
      b2internal function o6052(param1:o18851) : void
      {
         var _loc7_:* = null;
         var _loc12_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc9_:int = 0;
         var _loc14_:* = null;
         var _loc11_:* = null;
         var _loc8_:* = null;
         var _loc5_:int = 0;
         _loc12_ = o20786;
         while(_loc12_)
         {
            _loc12_.o15637(param1);
            _loc12_ = _loc12_.o1570;
         }
         var _loc6_:o586 = o20550;
         _loc6_.o3836(o3965,o13994,o17068,null,o8835.o16998,o5390);
         _loc7_ = o5970;
         while(_loc7_)
         {
            _loc7_.o20198 = _loc7_.o20198 & ~o5173.o19486;
            _loc7_ = _loc7_.o1570;
         }
         _loc2_ = o2410;
         while(_loc2_)
         {
            _loc2_.o20198 = _loc2_.o20198 & ~o16520.o19486;
            _loc2_ = _loc2_.o1570;
         }
         _loc3_ = o5350;
         while(_loc3_)
         {
            _loc3_.o6811 = false;
            _loc3_ = _loc3_.o1570;
         }
         var _loc10_:int = o3965;
         var _loc13_:Vector.<o5173> = o19914;
         _loc4_ = o5970;
         while(_loc4_)
         {
            if(!(_loc4_.o20198 & o5173.o19486))
            {
               if(!(_loc4_.o4675() == false || _loc4_.o20329() == false))
               {
                  if(_loc4_.o20697() != o5173.o16684)
                  {
                     _loc6_.o13552();
                     _loc9_ = 0;
                     _loc9_++;
                     _loc13_[_loc9_] = _loc4_;
                     _loc4_.o20198 = _loc4_.o20198 | o5173.o19486;
                     while(_loc9_ > 0)
                     {
                        _loc9_--;
                        _loc7_ = _loc13_[_loc9_];
                        _loc6_.o20577(_loc7_);
                        if(_loc7_.o4675() == false)
                        {
                           _loc7_.o17676(true);
                        }
                        if(_loc7_.o20697() != o5173.o16684)
                        {
                           _loc11_ = _loc7_.o2410;
                           while(_loc11_)
                           {
                              if(!(_loc11_.o9663.o20198 & o16520.o19486))
                              {
                                 if(!(_loc11_.o9663.o13437() == true || _loc11_.o9663.o13755() == false || _loc11_.o9663.o4979() == false))
                                 {
                                    _loc6_.o6465(_loc11_.o9663);
                                    _loc11_.o9663.o20198 = _loc11_.o9663.o20198 | o16520.o19486;
                                    _loc14_ = _loc11_.o3316;
                                    if(!(_loc14_.o20198 & o5173.o19486))
                                    {
                                       _loc9_++;
                                       _loc13_[_loc9_] = _loc14_;
                                       _loc14_.o20198 = _loc14_.o20198 | o5173.o19486;
                                    }
                                 }
                              }
                              _loc11_ = _loc11_.o3176;
                           }
                           _loc8_ = _loc7_.o5350;
                           while(_loc8_)
                           {
                              if(_loc8_.o10457.o6811 != true)
                              {
                                 _loc14_ = _loc8_.o3316;
                                 if(_loc14_.o20329() != false)
                                 {
                                    _loc6_.o20609(_loc8_.o10457);
                                    _loc8_.o10457.o6811 = true;
                                    if(!(_loc14_.o20198 & o5173.o19486))
                                    {
                                       _loc9_++;
                                       _loc13_[_loc9_] = _loc14_;
                                       _loc14_.o20198 = _loc14_.o20198 | o5173.o19486;
                                    }
                                 }
                              }
                              _loc8_ = _loc8_.o3176;
                           }
                           continue;
                        }
                     }
                     _loc6_.o6052(param1,o6806,o1394);
                     _loc5_ = 0;
                     while(_loc5_ < _loc6_.o3965)
                     {
                        _loc7_ = _loc6_.o9760[_loc5_];
                        if(_loc7_.o20697() == o5173.o16684)
                        {
                           _loc7_.o20198 = _loc7_.o20198 & ~o5173.o19486;
                        }
                        _loc5_++;
                     }
                  }
               }
            }
            _loc4_ = _loc4_.o1570;
         }
         _loc5_ = 0;
         while(_loc5_ < _loc13_.length)
         {
            if(_loc13_[_loc5_])
            {
               _loc13_[_loc5_] = null;
               _loc5_++;
               continue;
            }
            break;
         }
         _loc7_ = o5970;
         while(_loc7_)
         {
            if(!(_loc7_.o4675() == false || _loc7_.o20329() == false))
            {
               if(_loc7_.o20697() != o5173.o16684)
               {
                  _loc7_.o5764();
               }
            }
            _loc7_ = _loc7_.o1570;
         }
         o8835.o16758();
      }
      
      b2internal function o17475(param1:o18851) : void
      {
         var _loc13_:* = null;
         var _loc18_:* = null;
         var _loc22_:* = null;
         var _loc15_:* = null;
         var _loc20_:* = null;
         var _loc9_:* = null;
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc17_:Number = NaN;
         var _loc8_:* = null;
         var _loc14_:int = 0;
         var _loc16_:int = 0;
         var _loc19_:* = null;
         var _loc7_:* = null;
         var _loc12_:* = null;
         var _loc10_:int = 0;
         var _loc11_:o586 = o20550;
         _loc11_.o3836(o3965,32,32,null,o8835.o16998,o5390);
         var _loc21_:Vector.<o5173> = o17924;
         _loc13_ = o5970;
         while(_loc13_)
         {
            _loc13_.o20198 = _loc13_.o20198 & ~o5173.o19486;
            _loc13_.o19080.o8902 = 0;
            _loc13_ = _loc13_.o1570;
         }
         _loc2_ = o2410;
         while(_loc2_)
         {
            _loc2_.o20198 = _loc2_.o20198 & ~(o16520.o12949 | o16520.o19486);
            _loc2_ = _loc2_.o1570;
         }
         _loc5_ = o5350;
         while(_loc5_)
         {
            _loc5_.o6811 = false;
            _loc5_ = _loc5_.o1570;
         }
         loop3:
         while(true)
         {
            while(true)
            {
               _loc6_ = null;
               _loc3_ = 1;
               _loc2_ = o2410;
               while(_loc2_)
               {
                  if(!(_loc2_.o13437() == true || _loc2_.o13755() == false || _loc2_.o18258() == false || true))
                  {
                     _loc4_ = 1;
                     if(_loc2_.o20198 & o16520.o12949)
                     {
                        _loc4_ = Number(_loc2_.o15899);
                        addr302:
                        if(Number.MIN_VALUE < _loc4_ && _loc4_ < _loc3_)
                        {
                           _loc6_ = _loc2_;
                           _loc3_ = _loc4_;
                        }
                     }
                     else
                     {
                        _loc18_ = _loc2_.o5573;
                        _loc22_ = _loc2_.o18752;
                        _loc15_ = _loc18_.o14645;
                        _loc20_ = _loc22_.o14645;
                        if(!((_loc15_.o20697() != o5173.o8639 || _loc15_.o4675() == false) && (_loc20_.o20697() != o5173.o8639 || _loc20_.o4675() == false)))
                        {
                           _loc17_ = _loc15_.o19080.o8902;
                           if(_loc15_.o19080.o8902 < _loc20_.o19080.o8902)
                           {
                              _loc17_ = _loc20_.o19080.o8902;
                              _loc15_.o19080.o15695(_loc17_);
                           }
                           else if(_loc20_.o19080.o8902 < _loc15_.o19080.o8902)
                           {
                              _loc17_ = _loc15_.o19080.o8902;
                              _loc20_.o19080.o15695(_loc17_);
                           }
                           _loc4_ = Number(_loc2_.o4197(_loc15_.o19080,_loc20_.o19080));
                           o14980.o12199(0 <= _loc4_ && _loc4_ <= 1);
                           if(_loc4_ > 0 && _loc4_ < 1)
                           {
                              _loc4_ = Number((1 - _loc4_) * _loc17_ + _loc4_);
                              if(_loc4_ > 1)
                              {
                                 _loc4_ = 1;
                              }
                           }
                           _loc2_.o15899 = _loc4_;
                           _loc2_.o20198 = _loc2_.o20198 | o16520.o12949;
                           §§goto(addr302);
                        }
                     }
                  }
                  _loc2_ = _loc2_.o1570;
               }
               if(!(_loc6_ == null || 1 - 100 * Number.MIN_VALUE < _loc3_))
               {
                  _loc18_ = _loc6_.o5573;
                  _loc22_ = _loc6_.o18752;
                  _loc15_ = _loc18_.o14645;
                  _loc20_ = _loc22_.o14645;
                  o17558.o18596(_loc15_.o19080);
                  o738.o18596(_loc20_.o19080);
                  _loc15_.o15695(_loc3_);
                  _loc20_.o15695(_loc3_);
                  _loc6_.o1797(o8835.o16998);
                  _loc6_.o20198 = _loc6_.o20198 & ~o16520.o12949;
                  if(_loc6_.o13437() == true || _loc6_.o13755() == false)
                  {
                     _loc15_.o19080.o18596(o17558);
                     _loc20_.o19080.o18596(o738);
                     _loc15_.o14187();
                     _loc20_.o14187();
                  }
                  else if(_loc6_.o4979() != false)
                  {
                     _loc8_ = _loc15_;
                     if(_loc8_.o20697() != o5173.o8639)
                     {
                        _loc8_ = _loc20_;
                     }
                     _loc11_.o13552();
                     _loc14_ = 0;
                     _loc16_ = 0;
                     _loc16_++;
                     _loc21_[_loc14_ + _loc16_] = _loc8_;
                     _loc8_.o20198 = _loc8_.o20198 | o5173.o19486;
                     while(_loc16_ > 0)
                     {
                        _loc14_++;
                        _loc13_ = _loc21_[_loc14_];
                        _loc16_--;
                        _loc11_.o20577(_loc13_);
                        if(_loc13_.o4675() == false)
                        {
                           _loc13_.o17676(true);
                        }
                        if(_loc13_.o20697() == o5173.o8639)
                        {
                           _loc9_ = _loc13_.o2410;
                           while(_loc9_)
                           {
                              if(_loc11_.o13994 != _loc11_.o11172)
                              {
                                 if(!(_loc9_.o9663.o20198 & o16520.o19486))
                                 {
                                    if(!(_loc9_.o9663.o13437() == true || _loc9_.o9663.o13755() == false || _loc9_.o9663.o4979() == false))
                                    {
                                       _loc11_.o6465(_loc9_.o9663);
                                       _loc9_.o9663.o20198 = _loc9_.o9663.o20198 | o16520.o19486;
                                       _loc19_ = _loc9_.o3316;
                                       if(!(_loc19_.o20198 & o5173.o19486))
                                       {
                                          if(_loc19_.o20697() != o5173.o16684)
                                          {
                                             _loc19_.o15695(_loc3_);
                                             _loc19_.o17676(true);
                                          }
                                          _loc21_[_loc14_ + _loc16_] = _loc19_;
                                          _loc16_++;
                                          _loc19_.o20198 = _loc19_.o20198 | o5173.o19486;
                                       }
                                    }
                                 }
                                 _loc9_ = _loc9_.o3176;
                                 continue;
                              }
                              break;
                           }
                           _loc7_ = _loc13_.o5350;
                           while(_loc7_)
                           {
                              if(_loc11_.o17068 != _loc11_.o12343)
                              {
                                 if(_loc7_.o10457.o6811 != true)
                                 {
                                    _loc19_ = _loc7_.o3316;
                                    if(_loc19_.o20329() != false)
                                    {
                                       _loc11_.o20609(_loc7_.o10457);
                                       _loc7_.o10457.o6811 = true;
                                       if(!(_loc19_.o20198 & o5173.o19486))
                                       {
                                          if(_loc19_.o20697() != o5173.o16684)
                                          {
                                             _loc19_.o15695(_loc3_);
                                             _loc19_.o17676(true);
                                          }
                                          _loc21_[_loc14_ + _loc16_] = _loc19_;
                                          _loc16_++;
                                          _loc19_.o20198 = _loc19_.o20198 | o5173.o19486;
                                       }
                                    }
                                 }
                              }
                              _loc7_ = _loc7_.o3176;
                           }
                           continue;
                        }
                     }
                     _loc12_ = o5816;
                     _loc12_.o1821 = false;
                     _loc12_.o10009 = (1 - _loc3_) * param1.o10009;
                     _loc12_.o4515 = 1 / _loc12_.o10009;
                     _loc12_.o12930 = 0;
                     _loc12_.o6387 = param1.o6387;
                     _loc12_.o15205 = param1.o15205;
                     _loc11_.o17475(_loc12_);
                     _loc10_ = 0;
                     while(_loc10_ < _loc11_.o3965)
                     {
                        _loc13_ = _loc11_.o9760[_loc10_];
                        _loc13_.o20198 = _loc13_.o20198 & ~o5173.o19486;
                        if(_loc13_.o4675() != false)
                        {
                           if(_loc13_.o20697() == o5173.o8639)
                           {
                              _loc13_.o5764();
                              _loc9_ = _loc13_.o2410;
                              while(_loc9_)
                              {
                                 _loc9_.o9663.o20198 = _loc9_.o9663.o20198 & ~o16520.o12949;
                                 _loc9_ = _loc9_.o3176;
                              }
                           }
                        }
                        _loc10_++;
                     }
                     _loc10_ = 0;
                     while(_loc10_ < _loc11_.o13994)
                     {
                        _loc2_ = _loc11_.o4193[_loc10_];
                        _loc2_.o20198 = _loc2_.o20198 & ~(o16520.o12949 | o16520.o19486);
                        _loc10_++;
                     }
                     _loc10_ = 0;
                     while(_loc10_ < _loc11_.o17068)
                     {
                        _loc5_ = _loc11_.o12376[_loc10_];
                        _loc5_.o6811 = false;
                        _loc10_++;
                     }
                     o8835.o16758();
                     continue loop3;
                  }
                  continue;
               }
               break;
            }
            return;
         }
      }
      
      b2internal function o17474(param1:o2748) : void
      {
         var _loc7_:* = null;
         var _loc3_:* = null;
         var _loc12_:* = null;
         var _loc11_:o5173 = param1.o1670();
         var _loc5_:o5173 = param1.o4568();
         var _loc9_:o12362 = _loc11_.o7718;
         var _loc13_:o12362 = _loc5_.o7718;
         var _loc4_:o20021 = _loc9_.position;
         var _loc10_:o20021 = _loc13_.position;
         var _loc2_:o20021 = param1.o17339();
         var _loc6_:o20021 = param1.o5566();
         var _loc8_:o6532 = o2030;
         switch(int(param1.o3804) - 3)
         {
            case 0:
               o16449.o18480(_loc2_,_loc6_,_loc8_);
               break;
            case 1:
               _loc7_ = param1 as o12525;
               _loc3_ = _loc7_.o7422();
               _loc12_ = _loc7_.o14121();
               o16449.o18480(_loc3_,_loc2_,_loc8_);
               o16449.o18480(_loc12_,_loc6_,_loc8_);
               o16449.o18480(_loc3_,_loc12_,_loc8_);
               break;
            case 2:
               o16449.o18480(_loc2_,_loc6_,_loc8_);
         }
      }
      
      b2internal function o19311(param1:o17586, param2:o12362, param3:o6532) : void
      {
         var _loc4_:* = null;
         var _loc9_:* = null;
         var _loc8_:Number = NaN;
         var _loc5_:* = null;
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc6_:int = 0;
         var _loc10_:* = undefined;
         var _loc13_:* = undefined;
         var _loc12_:* = null;
         switch(int(param1.o3804))
         {
            case 0:
               _loc4_ = param1 as o15114;
               _loc9_ = o10852.o1026(param2,_loc4_.o17446);
               _loc8_ = _loc4_.o4879;
               _loc5_ = param2.o13707.o19549;
               o16449.o16258(_loc9_,_loc8_,_loc5_,param3);
               break;
            case 1:
               _loc11_ = param1 as o13884;
               _loc6_ = _loc11_.o16646();
               _loc10_ = _loc11_.o4122();
               _loc13_ = new Vector.<o20021>(_loc6_);
               _loc7_ = 0;
               while(_loc7_ < _loc6_)
               {
                  _loc13_[_loc7_] = o10852.o1026(param2,_loc10_[_loc7_]);
                  _loc7_++;
               }
               o16449.o12355(_loc13_,_loc6_,param3);
               break;
            case 2:
               _loc12_ = param1 as o3362;
               o16449.o18480(o10852.o1026(param2,_loc12_.o15097()),o10852.o1026(param2,_loc12_.o6600()),param3);
         }
      }
   }
}

class o14883
{
    
   
   private var o5113:Array;
   
   private var o11389:o20021;
   
   private var o13493:o20021;
   
   private var o12476:o14303;
   
   private var o5734:Function;
   
   private var o7616:o13148;
   
   function o14883(param1:Array, param2:o20021, param3:o20021, param4:o14303, param5:Function, param6:o13148)
   {
      super();
      this.o5113 = param1;
      this.o11389 = param2;
      this.o13493 = param3;
      this.o12476 = param4;
      this.o5734 = param5;
      this.o7616 = param6;
   }
   
   private function o8539(param1:*, param2:*) : Number
   {
      var _loc4_:o11359 = param1[1];
      var _loc3_:o11359 = param2[1];
      var _loc6_:Number = _loc4_.o15686().o5667().x - o11389.x;
      var _loc8_:Number = _loc4_.o15686().o5667().y - o11389.y;
      var _loc5_:Number = _loc3_.o15686().o5667().x - o11389.x;
      var _loc7_:Number = _loc3_.o15686().o5667().y - o11389.y;
      if(_loc6_ * _loc6_ + _loc8_ * _loc8_ + (_loc4_.o4861() as o15114).o10060() < _loc5_ * _loc5_ + _loc7_ * _loc7_ + (_loc3_.o4861() as o15114).o10060())
      {
         return -1;
      }
      return 1;
   }
   
   public function o16612() : void
   {
      var _loc2_:* = null;
      var _loc3_:int = 0;
      var _loc4_:* = undefined;
      var _loc9_:Boolean = false;
      var _loc8_:Number = NaN;
      var _loc5_:* = null;
      var _loc7_:Boolean = false;
      var _loc1_:Array = [];
      var _loc6_:Array = [];
      _loc3_ = 0;
      while(_loc3_ < o5113.length)
      {
         _loc4_ = o5113[_loc3_][0];
         _loc2_ = o5113[_loc3_][1];
         if(_loc2_.o4861() is o15114)
         {
            _loc1_.push(o5113[_loc3_]);
         }
         else
         {
            _loc6_.push(o5113[_loc3_]);
         }
         _loc3_++;
      }
      _loc1_ = _loc1_.sort(o8539);
      _loc3_ = 0;
      while(_loc3_ < _loc1_.length)
      {
         _loc4_ = _loc1_[_loc3_][0];
         _loc2_ = _loc1_[_loc3_][1];
         _loc9_ = _loc2_.o4566(o12476,o7616);
         if(_loc9_)
         {
            _loc8_ = o12476.o9664;
            _loc5_ = new o20021((1 - _loc8_) * o11389.x + _loc8_ * o13493.x,(1 - _loc8_) * o11389.y + _loc8_ * o13493.y);
            _loc7_ = o5734(_loc2_,_loc5_,o12476.o1654,_loc8_);
            if(_loc2_.o4861() is o15114 && _loc7_)
            {
               break;
            }
         }
         _loc3_++;
      }
      _loc3_ = 0;
      while(_loc3_ < _loc6_.length)
      {
         _loc4_ = _loc6_[_loc3_][0];
         _loc2_ = _loc6_[_loc3_][1];
         _loc9_ = _loc2_.o4566(o12476,o7616);
         if(_loc9_)
         {
            _loc8_ = o12476.o9664;
            _loc5_ = new o20021((1 - _loc8_) * o11389.x + _loc8_ * o13493.x,(1 - _loc8_) * o11389.y + _loc8_ * o13493.y);
            o5734(_loc2_,_loc5_,o12476.o1654,_loc8_);
         }
         _loc3_++;
      }
      this.o5113 = null;
      this.o11389 = null;
      this.o13493 = null;
      this.o12476 = null;
      this.o5734 = null;
      this.o7616 = null;
   }
}
