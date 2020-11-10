package
{
   public class o5343
   {
      
      {
         o4504.o730.sort(o11591);
      }
      
      public function o5343()
      {
         super();
      }
      
      private static function o11591(param1:String, param2:String) : int
      {
         if(param1.length >= param2.length)
         {
            return -1;
         }
         return 1;
      }
      
      public static function o16306(param1:String) : String
      {
         var _loc2_:* = param1;
         var _loc3_:Vector.<String> = new Vector.<String>();
         var _loc5_:Vector.<int> = new Vector.<int>();
         _loc2_ = o16440(_loc2_,_loc3_,_loc5_);
         _loc2_ = o8083(_loc2_);
         _loc2_ = o8083(o19102(_loc2_),_loc2_);
         _loc2_ = o11420(_loc2_,_loc3_,_loc5_);
         var _loc4_:RegExp = new RegExp(o17275.o19036,"g");
         _loc2_ = _loc2_.replace(_loc4_,o17275.o7325);
         return _loc2_;
      }
      
      private static function o8083(param1:String, param2:String = null) : String
      {
         var _loc10_:int = 0;
         var _loc4_:* = null;
         var _loc12_:int = 0;
         var _loc9_:* = 0;
         var _loc6_:* = null;
         var _loc13_:* = null;
         var _loc16_:Boolean = false;
         var _loc3_:int = 0;
         var _loc7_:Boolean = false;
         var _loc5_:* = null;
         var _loc14_:int = 0;
         var _loc18_:int = 0;
         var _loc17_:int = 0;
         var _loc21_:int = 0;
         var _loc19_:* = null;
         var _loc11_:int = 0;
         var _loc20_:* = new String(!!param2?param2:param1);
         var _loc8_:String = param1.toLowerCase();
         _loc8_ = o15037(_loc8_);
         var _loc15_:Vector.<uint> = new Vector.<uint>();
         _loc10_ = 0;
         while(_loc10_ < o4504.o730.length)
         {
            _loc4_ = o4504.o730[_loc10_];
            _loc12_ = _loc8_.search(_loc4_);
            while(_loc12_ != -1)
            {
               _loc15_.length = 0;
               _loc9_ = _loc12_;
               while(_loc15_.length != _loc4_.length)
               {
                  _loc6_ = _loc4_.charAt(_loc15_.length);
                  _loc13_ = param1.charAt(_loc9_);
                  if(_loc6_.toLocaleLowerCase() == _loc13_.toLocaleLowerCase())
                  {
                     _loc15_.push(_loc9_);
                  }
                  else
                  {
                     _loc16_ = false;
                     _loc3_ = 0;
                     while(_loc3_ < o17275.o15821.length)
                     {
                        if(o17275.o15821[_loc3_] == _loc13_)
                        {
                           _loc16_ = true;
                           break;
                        }
                        _loc3_++;
                     }
                  }
                  _loc9_++;
               }
               _loc7_ = false;
               _loc5_ = new String();
               if(_loc15_[0] != 0)
               {
                  if(o7885(param1.charAt(_loc15_[0] - 1)))
                  {
                     _loc7_ = false;
                     _loc14_ = 0;
                     while(_loc14_ < _loc15_.length)
                     {
                        if(_loc14_ + 1 != _loc15_.length)
                        {
                           if(_loc15_[_loc14_ + 1] - _loc15_[_loc14_] != 1)
                           {
                              if(_loc7_ == false)
                              {
                                 _loc7_ = true;
                              }
                              else
                              {
                                 _loc7_ = false;
                                 break;
                              }
                           }
                        }
                        _loc14_++;
                     }
                     if(_loc7_)
                     {
                        _loc5_ = "";
                        _loc18_ = 0;
                        while(_loc18_ < _loc4_.length)
                        {
                           _loc5_ = _loc5_ + o17275.o19036;
                           _loc18_++;
                        }
                        _loc8_ = new String(_loc8_.substr(0,_loc12_) + _loc5_ + _loc8_.substr(_loc12_ + _loc4_.length));
                        _loc12_ = _loc8_.search(_loc4_);
                        continue;
                     }
                  }
               }
               if(_loc15_[_loc15_.length - 1] != _loc8_.length - 1)
               {
                  if(o7885(param1.charAt(_loc15_[_loc15_.length - 1] + 1)))
                  {
                     _loc7_ = false;
                     _loc17_ = 0;
                     while(_loc17_ < _loc15_.length)
                     {
                        if(_loc17_ + 1 != _loc15_.length)
                        {
                           if(_loc15_[_loc17_ + 1] - _loc15_[_loc17_] != 1)
                           {
                              if(_loc7_ == false)
                              {
                                 _loc7_ = true;
                              }
                              else
                              {
                                 _loc7_ = false;
                                 break;
                              }
                           }
                        }
                        _loc17_++;
                     }
                     if(_loc7_)
                     {
                        _loc5_ = "";
                        _loc21_ = 0;
                        while(_loc21_ < _loc4_.length)
                        {
                           _loc5_ = _loc5_ + o17275.o19036;
                           _loc21_++;
                        }
                        _loc8_ = new String(_loc8_.substr(0,_loc12_) + _loc5_ + _loc8_.substr(_loc12_ + _loc4_.length));
                        _loc12_ = _loc8_.search(_loc4_);
                        continue;
                     }
                  }
               }
               _loc19_ = new String(_loc20_);
               _loc11_ = 0;
               while(_loc11_ < _loc15_.length)
               {
                  _loc19_ = _loc20_.substr(0,_loc15_[_loc11_]);
                  _loc19_ = _loc19_ + o17275.o19036;
                  if(_loc15_[_loc11_] < param1.length - 1)
                  {
                     _loc19_ = _loc19_ + String(_loc20_.substring(_loc15_[_loc11_] + 1));
                  }
                  _loc20_ = _loc19_;
                  _loc11_++;
               }
               _loc8_ = o15037(param2 == null?_loc19_:o19102(_loc19_));
               _loc8_ = _loc8_.toLowerCase();
               _loc12_ = _loc8_.search(_loc4_);
            }
            _loc10_++;
         }
         return _loc20_;
      }
      
      public static function o3230(param1:String) : Boolean
      {
         var _loc4_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = o16306(param1);
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            if(param1.charCodeAt(_loc4_) == o17275.o7325.charCodeAt())
            {
               _loc6_++;
            }
            _loc4_++;
         }
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            if(_loc3_.charCodeAt(_loc2_) == o17275.o7325.charCodeAt())
            {
               _loc5_++;
            }
            _loc2_++;
         }
         return _loc6_ != _loc5_;
      }
      
      private static function o15037(param1:String, param2:Boolean = false) : String
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc3_:String = new String(param1);
         _loc5_ = 0;
         while(_loc5_ < o17275.o15821.length)
         {
            if(!(param2 && o17275.o15821[_loc5_] == " "))
            {
               _loc4_ = new RegExp(o17275.o15821[_loc5_],"g");
               _loc3_ = _loc3_.replace(_loc4_,"");
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      private static function o16440(param1:String, param2:Vector.<String>, param3:Vector.<int>) : String
      {
         var _loc7_:int = 0;
         var _loc11_:* = null;
         var _loc8_:int = 0;
         var _loc9_:* = null;
         var _loc14_:int = 0;
         var _loc12_:* = null;
         var _loc10_:* = null;
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc13_:* = new String(param1);
         var _loc6_:String = new String(param1.toLowerCase());
         _loc7_ = 0;
         while(_loc7_ < o4504.o730.length)
         {
            _loc11_ = o4504.o730[_loc7_];
            while(true)
            {
               _loc6_ = _loc13_.toLowerCase();
               _loc8_ = _loc6_.indexOf(_loc11_,_loc8_ + 1);
               if(_loc8_ != -1)
               {
                  _loc9_ = o4730(_loc6_,_loc8_);
                  _loc14_ = o17235(_loc11_,_loc9_);
                  if(_loc14_ != -1)
                  {
                     _loc12_ = new String(_loc13_.substr(0,_loc8_ - _loc14_));
                     _loc10_ = new String("");
                     _loc5_ = _loc8_ - _loc14_;
                     if(_loc5_ + _loc9_.length < _loc13_.length)
                     {
                        _loc10_ = _loc10_ + String(_loc13_.substring(_loc5_ + _loc9_.length));
                     }
                     _loc4_ = 0;
                     while(_loc4_ < _loc9_.length)
                     {
                        if(param1.charAt(_loc5_ + _loc4_).toLowerCase() == param1.charAt(_loc5_ + _loc4_))
                        {
                           _loc12_ = _loc12_ + o17275.o6940;
                        }
                        else
                        {
                           _loc12_ = _loc12_ + o17275.o8915;
                        }
                        _loc4_++;
                     }
                     _loc13_ = _loc12_;
                     _loc13_ = _loc13_ + _loc10_;
                     param2.push(_loc9_);
                     param3.push(_loc5_);
                  }
                  continue;
               }
               break;
            }
            _loc7_++;
         }
         return _loc13_;
      }
      
      private static function o11420(param1:String, param2:Vector.<String>, param3:Vector.<int>) : String
      {
         var _loc7_:int = 0;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         _loc7_ = 0;
         while(_loc7_ < param2.length)
         {
            _loc6_ = param1.substr(0,param3[_loc7_]);
            _loc8_ = new String();
            _loc4_ = 0;
            while(_loc4_ < param2[_loc7_].length)
            {
               if(param1.charAt(_loc4_ + param3[_loc7_]) == o17275.o8915)
               {
                  _loc8_ = _loc8_ + param2[_loc7_].charAt(_loc8_.length).toUpperCase();
               }
               else
               {
                  _loc8_ = _loc8_ + param2[_loc7_].charAt(_loc8_.length).toLowerCase();
               }
               _loc4_++;
            }
            _loc5_ = param1.substr(param3[_loc7_] + param2[_loc7_].length);
            param1 = _loc6_ + _loc8_ + _loc5_;
            _loc7_++;
         }
         return param1;
      }
      
      private static function o19102(param1:String) : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = new String(param1);
         _loc2_ = 0;
         while(_loc2_ < o17275.o13967.length)
         {
            _loc3_ = _loc3_.split(o17275.o13967[_loc2_][0]).join(o17275.o13967[_loc2_][1]);
            _loc2_++;
         }
         return _loc3_;
      }
      
      private static function o5530(param1:String, param2:String) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Array = o10475.o15834[param1];
         if(_loc4_ == null)
         {
            return false;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(param2 == _loc4_[_loc3_])
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      private static function o17235(param1:String, param2:String) : int
      {
         var _loc3_:int = 0;
         var _loc4_:Array = o10475.o15834[param1];
         if(_loc4_ == null)
         {
            return -1;
         }
         _loc3_ = 0;
         while(_loc3_ < _loc4_.length)
         {
            if(param2 == _loc4_[_loc3_])
            {
               return param2.search(param1);
            }
            _loc3_++;
         }
         return -1;
      }
      
      private static function o7885(param1:String) : Boolean
      {
         return param1.toLowerCase().charCodeAt() >= "a".charCodeAt() && param1.toLowerCase().charCodeAt() <= "z".charCodeAt();
      }
      
      private static function o4730(param1:String, param2:int) : String
      {
         var _loc4_:int = 0;
         var _loc5_:* = -1;
         var _loc3_:String = new String(param1);
         while(true)
         {
            param1 = new String(o15037(param1,true));
            _loc4_ = param1.indexOf(" ",_loc5_ + 1);
            if(_loc4_ != -1)
            {
               if(_loc4_ > param2)
               {
                  return param1.substring(_loc5_ + 1,_loc4_);
               }
               _loc5_ = _loc4_;
               continue;
            }
            break;
         }
         if(_loc5_ == -1)
         {
            return param1;
         }
         return param1.substring(_loc5_ + 1,2147483647);
      }
   }
}
