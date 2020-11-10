package
{
   import flash.utils.Dictionary;
   
   public class o3425
   {
       
      
      private var o6169:o3461;
      
      public var o8906:Dictionary;
      
      private var o5470:Array;
      
      private var o5455:Array;
      
      private var o15480:Array;
      
      private var o20527:Array;
      
      private var o2729:Array;
      
      private var o16331:Array;
      
      private var o5727:Array;
      
      public function o3425(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get o9979() : o3355
      {
         return o5470[o20852.random(o5470.length - 1)];
      }
      
      public function get o11649() : o3355
      {
         return o5455[o20852.random(o5455.length - 1)];
      }
      
      public function get o20671() : o3355
      {
         return o15480[o20852.random(o15480.length - 1)];
      }
      
      public function get o12071() : o3355
      {
         return o20527[o20852.random(o20527.length - 1)];
      }
      
      public function get o11814() : o3355
      {
         return o2729[o20852.random(o2729.length - 1)];
      }
      
      public function get o7852() : o3355
      {
         return o16331[o20852.random(o16331.length - 1)];
      }
      
      public function get o9019() : o3355
      {
         return o5727[o20852.random(o5727.length - 1)];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         o8906 = new Dictionary();
         var o19165:Array = [o6169.o16532("assets.sounds.ambient.Critter1"),o6169.o16532("assets.sounds.ambient.Critter2"),o6169.o16532("assets.sounds.ambient.Groan1"),o6169.o16532("assets.sounds.ambient.Groan2"),o6169.o16532("assets.sounds.ambient.Groan3"),o6169.o16532("assets.sounds.ambient.Groan4"),o6169.o16532("assets.sounds.ambient.Groan5"),o6169.o16532("assets.sounds.ambient.Groan6"),o6169.o16532("assets.sounds.ambient.Groan7"),o6169.o16532("assets.sounds.ambient.Groan8"),o6169.o16532("assets.sounds.ambient.Groan9"),o6169.o16532("assets.sounds.ambient.Groan10"),o6169.o16532("assets.sounds.ambient.Scream1"),o6169.o16532("assets.sounds.ambient.Scream2"),o6169.o16532("assets.sounds.ambient.Scream3"),o6169.o16532("assets.sounds.ambient.Scream4"),o6169.o16532("assets.sounds.ambient.Scream5"),o6169.o16532("assets.sounds.ambient.Scream6"),o6169.o16532("assets.sounds.ambient.Scream7"),o6169.o16532("assets.sounds.ambient.Scream8"),o6169.o16532("assets.sounds.ambient.Scream9"),o6169.o16532("assets.sounds.ambient.Pipes1"),o6169.o16532("assets.sounds.ambient.Pipes2"),o6169.o16532("assets.sounds.ambient.Pipes3"),o6169.o16532("assets.sounds.ambient.Pipes4"),o6169.o16532("assets.sounds.ambient.Pipes5"),o6169.o16532("assets.sounds.ambient.Pipes6"),o6169.o16532("assets.sounds.ambient.Pipes7"),o6169.o16532("assets.sounds.ambient.Pipes8"),o6169.o16532("assets.sounds.ambient.Pipes9"),o6169.o16532("assets.sounds.ambient.Creak1"),o6169.o16532("assets.sounds.ambient.Creak2"),o6169.o16532("assets.sounds.ambient.Creak3"),o6169.o16532("assets.sounds.ambient.Creak4"),o6169.o16532("assets.sounds.ambient.Creak5"),o6169.o16532("assets.sounds.ambient.Creak6"),o6169.o16532("assets.sounds.ambient.Creak7"),o6169.o16532("assets.sounds.ambient.Creak8"),o6169.o16532("assets.sounds.ambient.Spark1"),o6169.o16532("assets.sounds.ambient.Spark2"),o6169.o16532("assets.sounds.ambient.Spark3"),o6169.o16532("assets.sounds.ambient.TitleExplode1"),o6169.o16532("assets.sounds.ambient.TitleExplode2"),o6169.o16532("assets.sounds.ambient.TitleExplode3"),o6169.o16532("assets.sounds.ambient.TitleExplode4")];
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355, param27:o3355, param28:o3355, param29:o3355, param30:o3355, param31:o3355, param32:o3355, param33:o3355, param34:o3355, param35:o3355, param36:o3355, param37:o3355, param38:o3355, param39:o3355, param40:o3355, param41:o3355, param42:o3355, param43:o3355, param44:o3355, param45:o3355):void
         {
            o5470 = [param1,param2];
            o15480 = [param3,param4,param5,param6,param7,param8,param9,param10,param11,param12];
            o2729 = [param13,param14,param15,param16,param17,param18,param19,param20,param21];
            o20527 = [param22,param23,param24,param25,param26,param27,param28,param29,param30];
            o16331 = [param31,param32,param33,param34,param35,param36,param37,param38];
            o5727 = [param39,param40,param41];
            o5455 = [param42,param43,param44,param45];
            o8906["critter1Arg"] = param1;
            o8906["critter2Arg"] = param2;
            o8906["groan1Arg"] = param3;
            o8906["groan2Arg"] = param4;
            o8906["groan3Arg"] = param5;
            o8906["groan4Arg"] = param6;
            o8906["groan5Arg"] = param7;
            o8906["groan6Arg"] = param8;
            o8906["groan7Arg"] = param9;
            o8906["groan8Arg"] = param10;
            o8906["groan9Arg"] = param11;
            o8906["groan10Arg"] = param12;
            o8906["scream1Arg"] = param13;
            o8906["scream2Arg"] = param14;
            o8906["scream3Arg"] = param15;
            o8906["scream4Arg"] = param16;
            o8906["scream5Arg"] = param17;
            o8906["scream6Arg"] = param18;
            o8906["scream7Arg"] = param19;
            o8906["scream8Arg"] = param20;
            o8906["scream9Arg"] = param21;
            o8906["pipes1Arg"] = param22;
            o8906["pipes2Arg"] = param23;
            o8906["pipes3Arg"] = param24;
            o8906["pipes4Arg"] = param25;
            o8906["pipes5Arg"] = param26;
            o8906["pipes6Arg"] = param27;
            o8906["pipes7Arg"] = param28;
            o8906["pipes8Arg"] = param29;
            o8906["pipes9Arg"] = param30;
            o8906["creak1Arg"] = param31;
            o8906["creak2Arg"] = param32;
            o8906["creak3Arg"] = param33;
            o8906["creak4Arg"] = param34;
            o8906["creak5Arg"] = param35;
            o8906["creak6Arg"] = param36;
            o8906["creak7Arg"] = param37;
            o8906["creak8Arg"] = param38;
            o8906["spark1Arg"] = param39;
            o8906["spark2Arg"] = param40;
            o8906["spark3Arg"] = param41;
            o8906["titleExplode1Arg"] = param42;
            o8906["titleExplode2Arg"] = param43;
            o8906["titleExplode3Arg"] = param44;
            o8906["titleExplode4Arg"] = param45;
            promise.data = this;
         });
         return promise;
      }
   }
}
