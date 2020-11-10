package
{
   public class o14096
   {
       
      
      public var o2752:o10481;
      
      public var o457:o15109;
      
      public var o5588:int;
      
      public var o7501:String;
      
      public var o8558:String;
      
      public var o5290:String;
      
      private var o4352:String;
      
      private var o2945:String;
      
      private var o8586:int = 0;
      
      private var o8028:o10411;
      
      private var o15275:o16123;
      
      private var o19744:o16123;
      
      private var o18059:o16123;
      
      public var o17656:Vector.<o3743>;
      
      private var o17715:o16123;
      
      private var o7991:o16123;
      
      private var o10144:o15787;
      
      private var o12621:o15787;
      
      private var o10130:o16123;
      
      private var o5937:o16123;
      
      private var o18895:o10411;
      
      public function o14096()
      {
         o8028 = new o10411(false);
         o15275 = new o16123(0);
         o19744 = new o16123(0);
         o18059 = new o16123(0);
         o17656 = new Vector.<o3743>();
         o17715 = new o16123(0);
         o7991 = new o16123(0);
         o10144 = new o15787(0);
         o12621 = new o15787(0);
         o10130 = new o16123(0);
         o5937 = new o16123(0);
         o18895 = new o10411(false);
         super();
      }
      
      public static function o10863(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Pistol";
            case 1:
               return "SMG";
            case 2:
               return "Assault Rifle";
            case 3:
               return "Shotgun";
            case 4:
               return "Sniper Rifle";
            case 5:
               return "Rocket Launcher";
            case 6:
               return "PAW";
            case 7:
               return "Flame Thrower";
            case 8:
               return "LMG";
            case 9:
               return "Disc Thrower";
            case 10:
               return "Laser";
         }
      }
      
      public static function o3195(param1:int) : String
      {
         switch(int(param1) - 1)
         {
            case 0:
               return "Physical";
            case 1:
               return "Thermal";
            case 2:
               return "Energy";
            case 3:
               return "Chemical";
            case 4:
               return "Shock";
         }
      }
      
      public function get o5689() : int
      {
         return o8586;
      }
      
      public function get o19419() : o14200
      {
         return o4519.o8116.profileData;
      }
      
      public function get o13296() : Number
      {
         return o12621.value;
      }
      
      public function get o263() : int
      {
         return o10130.value;
      }
      
      public function get o2397() : Boolean
      {
         return o8028.value;
      }
      
      public function get o14419() : int
      {
         return o19744.value;
      }
      
      public function get o4680() : int
      {
         return o17715.value;
      }
      
      public function get o4752() : int
      {
         return this.o5937.value;
      }
      
      public function get o11344() : int
      {
         return Math.ceil(o3680);
      }
      
      public function get o13429() : int
      {
         return o15275.value;
      }
      
      public function get o2774() : String
      {
         return this.o3958();
      }
      
      public function get grade() : int
      {
         return o2752.grade;
      }
      
      public function get o10748() : int
      {
         return o2752.o2752.id;
      }
      
      public function get o9139() : int
      {
         return this.o2752.o3603;
      }
      
      public function get o19940() : Boolean
      {
         return this.o2752.o6365 == 1;
      }
      
      public function get o1419() : Boolean
      {
         return this.o18895.value;
      }
      
      public function get o5520() : int
      {
         return o17656.length;
      }
      
      public function set grade(param1:int) : void
      {
         o2752.grade = param1;
      }
      
      public function set o13429(param1:int) : void
      {
         o15275.value = param1;
      }
      
      public function set o13296(param1:Number) : void
      {
         o12621.value = param1;
      }
      
      public function set o263(param1:int) : void
      {
         o10130.value = param1;
      }
      
      public function set o2397(param1:Boolean) : void
      {
         o8028.value = param1;
      }
      
      public function set o1419(param1:Boolean) : void
      {
         o18895.value = param1;
      }
      
      public function set o14419(param1:int) : void
      {
         o19744.value = param1;
      }
      
      public function set o4680(param1:int) : void
      {
         o17715.value = param1;
      }
      
      public function set o4752(param1:int) : void
      {
         this.o5937.value = param1;
      }
      
      public function set o1060(param1:int) : void
      {
         o7991.value = param1;
      }
      
      public function init(param1:o10481, param2:o15109, param3:o17849, param4:int, param5:int) : o14096
      {
         var _loc6_:* = null;
         this.o2752 = param1;
         this.o8586 = param5;
         o14111(param1.o2752.o20133);
         if(param1.grade == 0)
         {
            param4 = 0;
         }
         this.o17715.value = param4;
         if(param1 == null)
         {
            throw new Error("UIWeaponData weapon is null");
         }
         if(param2 == null)
         {
            throw new Error("UIWeaponData ammoDef is null");
         }
         this.o457 = param2;
         this.o7501 = param3.o9009(param1.name);
         o5290 = param3.o9009(param1.o7962);
         this.o8558 = "???" + o7501;
         o2945 = o7501;
         o4352 = o5290;
         if(o4752 != 0)
         {
            _loc6_ = o14200.o19505.o5292.o10365.o3236(o10748,o4752);
            if(_loc6_.o16173 != 0)
            {
               o2945 = o7501;
               o4352 = o5290;
               this.o7501 = "<FONT COLOR=\"" + _loc6_.o10020 + "\">" + _loc6_.name + "</FONT>";
               this.o5290 = o4352 + "<BR><BR>" + "<FONT FACE=\"Doppio One Regular\" SIZE=\"14\" COLOR=\"" + _loc6_.o10020 + "\" LETTERSPACING=\"0\" KERNING=\"0\">" + o2945 + " -  " + o12696.o19628(_loc6_.o16173) + ": \'<I>" + _loc6_.o17537 + "</I>\'</FONT>";
            }
         }
         o13429 = param1.o3603;
         return this;
      }
      
      public function o3897(param1:o11855, param2:Function) : void
      {
         if(o2752.o19419 <= 0)
         {
            throw new Error("Null profile image for weapon " + o2752.name);
         }
         param1.init(o2752.o19419,param2);
      }
      
      public function o8815(param1:o16681) : o20006
      {
         return new o20006(o2752.o19419,param1,211,57);
      }
      
      public function o19133(param1:o16681) : o20006
      {
         return new o20006(o2752.o19419,param1,519,225);
      }
      
      private function o14111(param1:int) : void
      {
         o5588 = param1 / 4 * (param1 / 4) / 20;
         o5588 = o5588;
      }
      
      public function o315() : Boolean
      {
         var _loc1_:* = null;
         if(o4752 != 0)
         {
            _loc1_ = o14200.o19505.o5292.o10365.o3236(o10748,o4752);
            if(_loc1_.o16173 != 0)
            {
               this.o7501 = "<FONT COLOR=\"" + _loc1_.o10020 + "\">" + _loc1_.name + "</FONT>";
               this.o5290 = o4352 + "<BR><BR>" + "<FONT FACE=\"Doppio One Regular\" SIZE=\"14\" COLOR=\"" + _loc1_.o10020 + "\" LETTERSPACING=\"0\" KERNING=\"0\">" + o2945 + " -  " + o12696.o19628(_loc1_.o16173) + ": \'<I>" + _loc1_.o17537 + "</I>\'</FONT>";
               return true;
            }
         }
         return false;
      }
      
      public function o16614() : String
      {
         return this.o2945;
      }
      
      public function o4339() : void
      {
         if(o7991.value == 0)
         {
            o7991.value = this.o3021();
         }
      }
      
      public function o18465(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc5_:o3743 = this.o17656[param1];
         var _loc4_:o14018 = _loc5_.o4589;
         var _loc2_:int = _loc4_.o16968(this,_loc5_.grade);
         return _loc3_ + _loc2_;
      }
      
      public function o3021() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = this.o2752.o9421;
         if(o17656 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < o17656.length)
            {
               _loc2_ = _loc2_ + o18465(_loc1_);
               _loc1_++;
            }
         }
         return _loc2_;
      }
      
      public function o13556() : void
      {
         var _loc1_:Number = NaN;
         var _loc4_:Number = NaN;
         if(o13296 != 0)
         {
            o13296 = o13296;
         }
         var _loc2_:Number = o2752.o3603 * (1 + this.o13296);
         o10144.value = _loc2_;
         var _loc6_:int = 0;
         var _loc5_:* = this.o17656;
         for each(var _loc3_ in this.o17656)
         {
            if(_loc3_.o4589.o18172 == 8)
            {
               _loc1_ = _loc3_.o4589.o4036[_loc3_.grade - 1].o18619;
               _loc4_ = _loc2_ * (_loc1_ - 1);
               o10144.value = _loc2_ + _loc4_;
               break;
            }
         }
         if(this.o13429 > o11344)
         {
            o13429 = o11344;
         }
      }
      
      public function o18554() : int
      {
         if(o14419 > 0 || o11549() > 0)
         {
            return o14419;
         }
         return o13429;
      }
      
      public function o18707() : int
      {
         var _loc1_:o6679 = o19419.o7923.o17638.o8567(this);
         var _loc2_:int = _loc1_.o5109;
         var _loc3_:int = _loc1_.o17383;
         if(_loc3_ > 0)
         {
            return _loc3_;
         }
         return _loc2_;
      }
      
      public function o15117() : Boolean
      {
         if(o6779)
         {
            return true;
         }
         return o18707() > 0;
      }
      
      public function o4192() : Boolean
      {
         return this.o14419 > 0 || o11549() > 0;
      }
      
      public function o829() : Boolean
      {
         return this.o13429 > 0 || o2069() > 0;
      }
      
      public function o2140() : int
      {
         var _loc1_:* = 0;
         var _loc5_:int = 0;
         var _loc4_:int = o11344;
         var _loc3_:o6679 = o19419.o7923.o17638.o8567(this);
         var _loc2_:int = _loc3_.o5109;
         var _loc6_:int = _loc3_.o17383;
         if(_loc6_ > 0)
         {
            _loc5_ = _loc4_ - o14419;
            if(_loc6_ >= _loc5_)
            {
               _loc1_ = _loc5_;
            }
            else
            {
               _loc1_ = _loc6_;
            }
            this.o14419 = this.o14419 + _loc1_;
            _loc3_.o20214(_loc1_);
         }
         else if(_loc2_ > 0 || o6779)
         {
            _loc5_ = _loc4_ - o13429;
            if(_loc2_ >= _loc5_ || o6779)
            {
               _loc1_ = _loc5_;
            }
            else
            {
               _loc1_ = _loc2_;
            }
            this.o13429 = this.o13429 + _loc1_;
            if(o6779 == false)
            {
               _loc3_.o18664(_loc1_);
            }
         }
         else
         {
            return 0;
         }
         return o18554();
      }
      
      public function o18664() : Boolean
      {
         if(o14419 > 0)
         {
            o14419 = Number(o14419) - 1;
            if(o14419 < 0)
            {
               o14419 = 0;
            }
         }
         else if(o13429 > 0)
         {
            o13429 = Number(o13429) - 1;
            if(o13429 < 0)
            {
               o13429 = 0;
            }
         }
         else
         {
            return false;
         }
         return true;
      }
      
      public function o2069() : int
      {
         var _loc1_:o6679 = o19419.o7923.o17638.o8567(this);
         var _loc2_:int = _loc1_.o5109;
         return _loc2_;
      }
      
      public function o11549() : int
      {
         var _loc1_:o6679 = o19419.o7923.o17638.o8567(this);
         var _loc2_:int = _loc1_.o17383;
         return _loc2_;
      }
      
      public function o3958() : String
      {
         var _loc1_:String = "";
         var _loc4_:int = 0;
         var _loc3_:* = this.o17656;
         for each(var _loc2_ in this.o17656)
         {
            _loc1_ = _loc1_ + (_loc2_.o4589.o7962 + " ");
         }
         if(_loc1_ == "")
         {
            return "No augments equipped";
         }
         return _loc1_;
      }
      
      public function o6817(param1:o14200) : Boolean
      {
         var _loc2_:* = this.o2752.o16859 == 1;
         return _loc2_;
      }
      
      public function o3227() : String
      {
         switch(int(this.o2752.o16859) - 1)
         {
            case 0:
               return "Full Auto";
            case 1:
               return "Semi Auto";
            case 2:
               return "Burst";
         }
      }
      
      public function o13234(param1:int) : o3743
      {
         var _loc4_:int = 0;
         var _loc3_:* = this.o17656;
         for each(var _loc2_ in this.o17656)
         {
            if(_loc2_ == null || _loc2_.o4589 == null)
            {
               return null;
            }
            if(_loc2_.o4589.o18172 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get o3680() : Number
      {
         var _loc1_:Number = NaN;
         if(o4519.o32 != null && o4519.o32.o13012 != null)
         {
            _loc1_ = o4519.o32.o13012.o11026;
            if(o4519.o32.o13012.o6749 > 0.001)
            {
               _loc1_ = _loc1_ + o10144.value * o4519.o32.o13012.o6749;
            }
            return o10144.value + _loc1_;
         }
         return o10144.value;
      }
      
      public function get o1060() : int
      {
         if(o7991.value == 0)
         {
            o4339();
         }
         return o7991.value;
      }
      
      public function get o6779() : Boolean
      {
         return this.o2752.o2752.o6365 == 1 && o2752.o2752.o3 == 1 && o2752.o2752.o11570 == 1;
      }
      
      public function o14264() : Object
      {
         return o19599();
      }
      
      public function o19599() : Object
      {
         var _loc3_:Object = {};
         o13556();
         if(o5689 <= 0)
         {
            throw new Error("invalid weapon uid");
         }
         _loc3_[97] = this.o5689;
         _loc3_[98] = this.o2752.o2752.id;
         _loc3_[2] = this.o2752.grade;
         _loc3_[100] = this.o13429;
         _loc3_[99] = this.o14419;
         var _loc1_:Array = [];
         var _loc5_:int = 0;
         var _loc4_:* = this.o17656;
         for each(var _loc2_ in this.o17656)
         {
            _loc1_.push(_loc2_.o14264(true));
         }
         _loc3_[101] = _loc1_;
         _loc3_[102] = o17715.value;
         _loc3_[103] = this.o1060;
         _loc3_[104] = o2397;
         _loc3_[404] = Math.round(o13296 * 100);
         _loc3_[426] = o263;
         _loc3_[543] = o4752;
         _loc3_[544] = o1419;
         return _loc3_;
      }
      
      public function o8169(param1:o14200, param2:Object) : o14096
      {
         return o1686(param1,param2);
      }
      
      public function o1686(param1:o14200, param2:Object) : o14096
      {
         var _loc7_:int = 0;
         var _loc11_:int = 0;
         var _loc5_:int = param2[98];
         var _loc9_:int = param2[2];
         var _loc8_:o8925 = o4519.o8116.o1184.o11620[_loc5_];
         if(_loc8_ == null)
         {
            return null;
         }
         var _loc3_:o15109 = o4519.o8116.o1184.o17638[_loc8_.o17638];
         var _loc10_:o10481 = new o10481(_loc8_,_loc9_);
         var _loc6_:o17849 = o4519.o8116.o16619;
         if(param2[97] == null)
         {
            _loc7_ = param1.data.o20953();
         }
         else
         {
            _loc7_ = param2[97];
         }
         if(param2[543] != null)
         {
            o4752 = param2[543];
            if(o4752 != 0)
            {
               _loc11_ = 0;
            }
         }
         else
         {
            o4752 = 0;
         }
         this.init(_loc10_,_loc3_,_loc6_,o17715.value,_loc7_);
         var _loc4_:Array = param2[101];
         o17656 = new Vector.<o3743>();
         var _loc14_:int = 0;
         var _loc13_:* = _loc4_;
         for each(var _loc12_ in _loc4_)
         {
            o17656.push(new o3743().o8169(param1,_loc12_));
         }
         if(param2[103] == null)
         {
            o1060 = this.o3021();
         }
         else
         {
            this.o1060 = int(param2[103]);
            if(o1060 == 0)
            {
               o1060 = this.o3021();
            }
         }
         if(param2[100] != null)
         {
            this.o13429 = param2[100];
         }
         if(param2[99] != null)
         {
            this.o14419 = param2[99];
         }
         if(param2[102] != null)
         {
            o17715.value = int(param2[102]);
         }
         else
         {
            o17715.value = 0;
         }
         if(param2[104] != null)
         {
            o2397 = param2[104];
         }
         if(param2[404] != null)
         {
            o13296 = param2[404] / 100;
         }
         if(param2[426] != null)
         {
            o263 = param2[426];
         }
         if(param2[544] != null)
         {
            o1419 = param2[544];
         }
         else
         {
            o1419 = false;
         }
         o13556();
         return this;
      }
   }
}
