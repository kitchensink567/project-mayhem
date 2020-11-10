package
{
   public class o15719
   {
       
      
      private var o6169:o3461;
      
      private var o5140:Array;
      
      private var o7945:Array;
      
      private var o17508:Array;
      
      private var o5758:Array;
      
      public function o15719(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get o13157() : o3355
      {
         return o5140[o20852.random(o5140.length - 1)];
      }
      
      public function get o4335() : o3355
      {
         return o7945[o20852.random(o7945.length - 1)];
      }
      
      public function get o5645() : o3355
      {
         return o17508[o20852.random(o17508.length - 1)];
      }
      
      public function get o19111() : o3355
      {
         return o5758[o20852.random(o5758.length - 1)];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [];
         o19165.push(o6169.o16532("assets.sounds.explosions.Grenade1"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Grenade2"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Grenade3"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Grenade4"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Cryo1"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Cryo2"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Rocket1"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Rocket2"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Rocket3"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Rocket4"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Rocket5"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Car1"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Car2"));
         o19165.push(o6169.o16532("assets.sounds.explosions.Car3"));
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355):void
         {
            o5140 = [param7,param8,param9,param10,param11];
            o7945 = [param1,param2,param3,param4];
            o17508 = [param5,param6];
            o5758 = [param12,param13,param14];
            promise.data = this;
         });
         return promise;
      }
   }
}
