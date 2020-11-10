package
{
   import flash.utils.Dictionary;
   
   public class o20567
   {
       
      
      public var name:String;
      
      private var o20099:o10411;
      
      private var o17170:o16123;
      
      public var o17645:Vector.<String>;
      
      public var o7929:Vector.<String>;
      
      public var o8896:Dictionary;
      
      public var o7391:Boolean = false;
      
      public var o5805:Dictionary;
      
      public var o11728:o10411;
      
      public var o4029:String = null;
      
      public var o17131:String = null;
      
      public var o2579:String = null;
      
      public var o15541:String = null;
      
      public var o9566:String = null;
      
      public var o17977:String = null;
      
      public var o20073:String = null;
      
      public var o8398:String = null;
      
      public var o1613:String = null;
      
      public function o20567(param1:String, param2:Object)
      {
         o20099 = new o10411(false);
         o17170 = new o16123(-1);
         o17645 = new Vector.<String>();
         o7929 = new Vector.<String>();
         o8896 = new Dictionary();
         o5805 = new Dictionary();
         o11728 = new o10411(false);
         super();
         this.name = param1;
         this.id = param2["id"];
         this.o13779 = param2["Active"];
         if(param2["FestivalHolidayLootAssets"])
         {
            var _loc5_:int = 0;
            var _loc4_:* = param2["FestivalHolidayLootAssets"];
            for(var _loc3_ in param2["FestivalHolidayLootAssets"])
            {
               if(_loc3_)
               {
                  o17645.push(param2["FestivalHolidayLootAssets"][_loc3_]);
               }
            }
         }
         if(param2["LootSpawnDecoration"])
         {
            var _loc7_:int = 0;
            var _loc6_:* = param2["LootSpawnDecoration"];
            for(_loc3_ in param2["LootSpawnDecoration"])
            {
               if(_loc3_)
               {
                  o8896[_loc3_] = param2["LootSpawnDecoration"][_loc3_];
               }
            }
         }
         if(param2["AssetChanges"])
         {
            var _loc9_:int = 0;
            var _loc8_:* = param2["AssetChanges"];
            for(_loc3_ in param2["AssetChanges"])
            {
               if(_loc3_)
               {
                  o7929.push(param2["AssetChanges"][_loc3_]);
               }
            }
         }
         if(param2["FestivalHat"])
         {
            o7391 = true;
            var _loc11_:int = 0;
            var _loc10_:* = param2["FestivalHat"];
            for(_loc3_ in param2["FestivalHat"])
            {
               if(_loc3_)
               {
                  o5805[_loc3_] = param2["FestivalHat"][_loc3_];
               }
            }
         }
         if(param2["VirusSamplesChanges"])
         {
            o4029 = param2["VirusSamplesChanges"]["AuraBig"];
            o17131 = param2["VirusSamplesChanges"]["AuraSmall"];
            o2579 = param2["VirusSamplesChanges"]["SampleSmall"];
            o15541 = param2["VirusSamplesChanges"]["SampleMedium"];
            o9566 = param2["VirusSamplesChanges"]["SampleLarge"];
            o17977 = param2["VirusSamplesChanges"]["Heading"];
            o20073 = param2["VirusSamplesChanges"]["Short Description"];
            o8398 = param2["VirusSamplesChanges"]["Details"];
            o1613 = param2["VirusSamplesChanges"]["MissionSummaryLabel"];
            o11728.value = true;
         }
      }
      
      public function get o13779() : Boolean
      {
         return this.o20099.value;
      }
      
      public function set o13779(param1:Boolean) : void
      {
         this.o20099.value = param1;
      }
      
      public function get o18226() : Boolean
      {
         return this.o11728.value;
      }
      
      public function set o18226(param1:Boolean) : void
      {
         this.o11728.value = param1;
      }
      
      public function get id() : int
      {
         return this.o17170.value;
      }
      
      public function set id(param1:int) : void
      {
         this.o17170.value = param1;
      }
   }
}
