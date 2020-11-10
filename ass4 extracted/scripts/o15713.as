package
{
   public class o15713
   {
       
      
      private var o6169:o3461;
      
      public var o11205:o3355;
      
      public var o11677:o3355;
      
      public var o7794:o3355;
      
      public var o16439:o3355;
      
      public var o1045:o3355;
      
      public var o18747:o3355;
      
      public var o2005:o3355;
      
      public var o6059:o3355;
      
      public var o17900:o3355;
      
      public var o19529:o3355;
      
      public var o3568:o3355;
      
      public var o8070:o3355;
      
      public var o13093:o3355;
      
      public var o3824:o3355;
      
      public var o2648:o3355;
      
      public var o5028:o3355;
      
      public var o6632:o3355;
      
      public var o11565:o3355;
      
      public var o20412:o3355;
      
      public var o16132:o3355;
      
      public var o11380:o3355;
      
      public var o3774:o3355;
      
      public var o18915:o3355;
      
      private var o10527:Array;
      
      private var o20298:Array;
      
      public function o15713(param1:o3461)
      {
         super();
         this.o6169 = param1;
      }
      
      public function get o20017() : o3355
      {
         return o10527[o20852.random(o10527.length - 1)];
      }
      
      public function get o10367() : o3355
      {
         return o20298[o20852.random(o20298.length - 1)];
      }
      
      public function preload() : o16124
      {
         var promise:o16124 = new o16124();
         var o19165:Array = [];
         o19165.push(o6169.o16532("assets.sounds.player.Die"));
         o19165.push(o6169.o16532("assets.sounds.player.Die2"));
         o19165.push(o6169.o16532("assets.sounds.player.Die3"));
         o19165.push(o6169.o16532("assets.sounds.player.Die4"));
         o19165.push(o6169.o16532("assets.sounds.player.Die5"));
         o19165.push(o6169.o16532("assets.sounds.player.Die6"));
         o19165.push(o6169.o16532("assets.sounds.player.HitAcid"));
         o19165.push(o6169.o16532("assets.sounds.player.HitFire"));
         o19165.push(o6169.o16532("assets.sounds.player.ReviveMedic"));
         o19165.push(o6169.o16532("assets.sounds.player.Revive"));
         o19165.push(o6169.o16532("assets.sounds.player.PlaceTurret"));
         o19165.push(o6169.o16532("assets.sounds.player.LevelUp"));
         o19165.push(o6169.o16532("assets.sounds.player.Adrenaline"));
         o19165.push(o6169.o16532("assets.sounds.player.AerialBombardment"));
         o19165.push(o6169.o16532("assets.sounds.player.Antidote"));
         o19165.push(o6169.o16532("assets.sounds.player.AssaultTeam"));
         o19165.push(o6169.o16532("assets.sounds.player.Bioclense"));
         o19165.push(o6169.o16532("assets.sounds.player.CQB"));
         o19165.push(o6169.o16532("assets.sounds.player.DieAnotherDay"));
         o19165.push(o6169.o16532("assets.sounds.player.FinalFarewell"));
         o19165.push(o6169.o16532("assets.sounds.player.HoldTheLine"));
         o19165.push(o6169.o16532("assets.sounds.player.GetMedKit"));
         o19165.push(o6169.o16532("assets.sounds.player.UseMedKit"));
         o19165.push(o6169.o16532("assets.sounds.player.StimShot"));
         o19165.push(o6169.o16532("assets.sounds.player.KillingSpreeStart"));
         o19165.push(o6169.o16532("assets.sounds.player.KillingSpreeEnd"));
         o19165.push(o6169.o16532("assets.sounds.player.PickupStrongbox"));
         o19165.push(o6169.o16532("assets.sounds.player.PickupCash"));
         o19165.push(o6169.o16532("assets.sounds.player.PickupGrenade"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit1"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit2"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit3"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit4"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit5"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit6"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit7"));
         o19165.push(o6169.o16532("assets.sounds.player.Hit8"));
         o15714.o18684(o19165,function(param1:o3355, param2:o3355, param3:o3355, param4:o3355, param5:o3355, param6:o3355, param7:o3355, param8:o3355, param9:o3355, param10:o3355, param11:o3355, param12:o3355, param13:o3355, param14:o3355, param15:o3355, param16:o3355, param17:o3355, param18:o3355, param19:o3355, param20:o3355, param21:o3355, param22:o3355, param23:o3355, param24:o3355, param25:o3355, param26:o3355, param27:o3355, param28:o3355, param29:o3355, param30:o3355, param31:o3355, param32:o3355, param33:o3355, param34:o3355, param35:o3355, param36:o3355, param37:o3355):void
         {
            o11205 = param7;
            o11677 = param8;
            o7794 = param9;
            o16439 = param10;
            o1045 = param11;
            o18747 = param12;
            o19529 = param13;
            o3568 = param14;
            o8070 = param15;
            o13093 = param16;
            o3824 = param17;
            o2648 = param18;
            o5028 = param19;
            o6632 = param20;
            o11565 = param21;
            o20412 = param22;
            o16132 = param23;
            o11380 = param24;
            o3774 = param25;
            o18915 = param26;
            o2005 = param27;
            o6059 = param28;
            o17900 = param29;
            o10527 = [param1,param2,param3,param4,param5,param6];
            o20298 = [param30,param31,param32,param33,param34,param35,param36,param37];
            promise.data = this;
         });
         return promise;
      }
      
      public function o6391(param1:int) : o3355
      {
         var _loc2_:* = null;
         var _loc3_:* = param1;
         switch(_loc3_)
         {
            case 27:
               _loc2_ = o19529;
               break;
            case 33:
               _loc2_ = o13093;
               break;
            case 29:
               _loc2_ = o2648;
               break;
            case 23:
               _loc2_ = o5028;
               break;
            case 20:
               _loc2_ = o11565;
               break;
            case 13:
               _loc2_ = o20412;
               break;
            case 31:
               _loc2_ = o11380;
               break;
            default:
               _loc2_ = o11565;
         }
         return _loc2_;
      }
   }
}
