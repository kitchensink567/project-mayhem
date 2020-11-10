package
{
   public class o11063
   {
       
      
      public var o20892:int = 0;
      
      public var o4654:int = 0;
      
      public var o458:Boolean = false;
      
      public var o14559:Boolean = false;
      
      public var o8848:int = 0;
      
      public var o20667:int = 20;
      
      public var o8800:int = 4;
      
      public var o10321:Vector.<Boolean>;
      
      public var o2202:Boolean = false;
      
      public var o11931:Boolean = false;
      
      public function o11063()
      {
         var _loc1_:int = 0;
         o10321 = new Vector.<Boolean>();
         super();
         _loc1_ = 0;
         while(_loc1_ <= o14794.o20268)
         {
            o10321.push(false);
            _loc1_++;
         }
      }
      
      public function o19580() : Array
      {
         var _loc1_:int = 0;
         var _loc2_:Array = [];
         _loc1_ = 0;
         while(_loc1_ < o10321.length)
         {
            if(o10321[_loc1_])
            {
               _loc2_.push(_loc1_ + 1);
            }
            _loc1_++;
         }
         return _loc2_;
      }
      
      public function o6966(param1:int) : void
      {
         o20892 = param1;
         var _loc2_:int = 17;
         o14559 = param1 >= _loc2_;
         o458 = param1 >= 6 && param1 != 9 && param1 != 10 && param1 != 19 && param1 != 20;
         if(o14559)
         {
            o4654 = param1 - 11;
         }
         else
         {
            o4654 = param1;
         }
      }
      
      public function o8385() : Boolean
      {
         return o14559 && (o4654 == 6 || o4654 == 7 || o4654 == 16);
      }
      
      public function o2724() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         _loc1_.push("Shambler");
         _loc1_.push("Stalker");
         _loc1_.push("Spitter");
         _loc1_.push("Runner");
         _loc1_.push("Bloater");
         _loc1_.push("Shielder");
         _loc1_.push("Zombdroid Servant (subboss)");
         _loc1_.push("Zombdroid Soldier (subboss)");
         _loc1_.push("worm (not in ui)");
         _loc1_.push("spewWorm (not in ui)");
         _loc1_.push("Regurgitator (boss)");
         _loc1_.push("Necrosis (boss)");
         _loc1_.push("Zombie Mech (boss)");
         _loc1_.push("Wicker (boss)");
         _loc1_.push("Devastator (boss)");
         _loc1_.push("Necrosis Spawn (boss)");
         _loc1_.push("Loaderbot (subboss)");
         _loc1_.push("V2 Zombdroid Servant (subboss)");
         _loc1_.push("V2 Zombdroid Soldier (subboss)");
         _loc1_.push("--- (don\'t select)");
         _loc1_.push("--- (don\'t select)");
         _loc1_.push("V2 Regurgitator (boss)");
         _loc1_.push("V2 Necrosis (boss)");
         _loc1_.push("V2 Zombie Mech (boss)");
         _loc1_.push("V2 Wicker (boss)");
         _loc1_.push("V2 Devastator (boss)");
         _loc1_.push("V2 Necrosis Spawn (boss)");
         _loc1_.push("V2 Loaderbot (subboss)");
         return _loc1_;
      }
   }
}
