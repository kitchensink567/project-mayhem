package
{
   import flash.utils.Dictionary;
   
   public class o4788
   {
       
      
      private var o13029:o14128 = null;
      
      private var o15514:Dictionary;
      
      private var o3124:o10411;
      
      private var o7568:o10411;
      
      private var o4013:o10411;
      
      private var o19302:o10411;
      
      private var o2472:o10411;
      
      private var o356:o10411;
      
      public function o4788(param1:Object, param2:o14128)
      {
         var _loc3_:int = 0;
         o15514 = new Dictionary();
         o3124 = new o10411(false);
         o7568 = new o10411(false);
         o4013 = new o10411(false);
         o19302 = new o10411(false);
         o2472 = new o10411(false);
         o356 = new o10411(false);
         super();
         this.o13029 = param2;
         if(param1["Grade"] != null)
         {
            o19149 = true;
            _loc3_ = 0;
            while(_loc3_ < o1424.o4036.length)
            {
               if(param1["Grade"][o1424.o4036[_loc3_]] != null)
               {
                  o15514[o1424.o4036[_loc3_]] = param1["Grade"][o1424.o4036[_loc3_]];
                  if(o15514[o1424.o4036[_loc3_]] > 0)
                  {
                     o19149 = true;
                  }
               }
               else
               {
                  o15514[o1424.o4036[_loc3_]] = 0;
               }
               _loc3_++;
            }
         }
         o7695 = !!isNaN(param1["Count Ammo Caches"])?false:param1["Count Ammo Caches"];
         o3638 = !!isNaN(param1["Count Data Recovered"])?false:param1["Count Data Recovered"];
         o16175 = !!isNaN(param1["Count Zombies Killed"])?false:param1["Count Zombies Killed"];
         o9439 = !!isNaN(param1["Count Equipment Salvage"])?false:param1["Count Equipment Salvage"];
         o4064 = !!isNaN(param1["Count Ammo CratesSurvived"])?false:param1["Count Ammo Crates Survived"];
      }
      
      public function get o19149() : Boolean
      {
         return this.o3124.value;
      }
      
      public function get o7695() : Boolean
      {
         return this.o7568.value;
      }
      
      public function get o3638() : Boolean
      {
         return this.o4013.value;
      }
      
      public function get o16175() : Boolean
      {
         return this.o19302.value;
      }
      
      public function get o9439() : Boolean
      {
         return this.o2472.value;
      }
      
      public function get o4064() : Boolean
      {
         return this.o356.value;
      }
      
      public function set o19149(param1:Boolean) : void
      {
         this.o3124.value = param1;
      }
      
      public function set o7695(param1:Boolean) : void
      {
         this.o7568.value = param1;
      }
      
      public function set o3638(param1:Boolean) : void
      {
         this.o4013.value = param1;
      }
      
      public function set o16175(param1:Boolean) : void
      {
         this.o19302.value = param1;
      }
      
      public function set o9439(param1:Boolean) : void
      {
         this.o2472.value = param1;
      }
      
      public function set o4064(param1:Boolean) : void
      {
         this.o356.value = param1;
      }
      
      public function o10435(param1:int) : int
      {
         if(o10435[o1424.o4036[param1]] != null)
         {
            return o10435[o1424.o4036[param1]];
         }
         return 0;
      }
      
      public function o10001() : void
      {
         var _loc1_:int = 0;
         trace("|");
         trace("|-- Contract Data Flags --");
         trace("| Count Ammo Caches: \t\t\t" + o7695);
         trace("| Count Data Recovered: \t\t" + o3638);
         trace("| Count Zombies Killed: \t\t" + o16175);
         trace("| Count Equipment Salvage: \t\t" + o9439);
         trace("| Count AmmoCrates Survived: \t\t" + o4064);
         trace("|");
         trace("|-- Contract Grade Data  --");
         trace("| +-----+");
         trace("|\t== Grade Points ==");
         trace("|\t|=");
         _loc1_ = 0;
         while(_loc1_ < o1424.o4036.length)
         {
            if(o15514[o1424.o4036[_loc1_]] != null)
            {
               trace("|\t+--> " + o1424.o4036[_loc1_] + ":\t\t" + o15514[o1424.o4036[_loc1_]]);
            }
            _loc1_++;
         }
      }
      
      public function o12187(param1:int, param2:Object) : Boolean
      {
         var _loc3_:Boolean = false;
         if(!int(param1))
         {
            if(o15514[o1424.o377((param2 as o1313).grade)] > 0)
            {
               o13029.o10486.o19189 = o13029.o10486.o19189 + o15514[o1424.o377((param2 as o1313).grade)];
               _loc3_ = true;
            }
         }
         else
         {
            trace("DynamicTaskContractSettings: Message not recognised, message ID (" + param1 + ")");
         }
         return _loc3_;
      }
   }
}
