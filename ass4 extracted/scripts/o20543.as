package
{
   public class o20543
   {
      
      public static const o10831:int = 602;
      
      public static const o6082:int = 618;
      
      public static const o5888:int = 627;
      
      public static const o17412:int = 603;
      
      public static const o16818:int = 604;
      
      public static const o14888:int = 605;
      
      public static const o6220:int = 606;
      
      public static const o13935:int = 607;
      
      public static const o1865:int = 628;
      
      public static const o7855:int = 629;
      
      public static const o6363:int = 1000;
      
      public static const o16805:int = 608;
      
      public static const o12379:int = 609;
      
      public static const o6773:int = 634;
      
      public static const o16756:int = 631;
      
      public static const o15174:int = 632;
      
      public static const o15760:int = 633;
      
      public static const o5909:int = 614;
      
      public static const o17689:int = 615;
      
      public static const o3805:int = 617;
      
      public static const o15741:int = 630;
      
      public static const o10002:int = 623;
      
      public static const o9437:int = 625;
      
      public static const o2812:int = 2;
      
      public static const o12914:int = 10;
      
      public static const o3957:int = 664;
      
      public static const o14402:int = 665;
      
      public static const o9034:int = 616;
      
      public static const o4645:int = 610;
      
      public static const o11067:int = 611;
      
      public static const o2583:int = 612;
      
      public static const o12499:int = 613;
      
      public static const o9817:int = 666;
      
      public static const o6990:int = 667;
      
      public static const o14872:int = 668;
      
      public static const o2756:int = 669;
      
      public static const o8430:int = 670;
      
      public static const o16176:int = 671;
      
      public static const o1726:int = 722;
      
      public static const o14010:int = 723;
      
      public static const o7578:int = 724;
      
      public static const o2761:int = 725;
      
      public static const o792:int = 726;
      
      public static const o12197:int = 727;
      
      public static const o18311:int = 728;
      
      public static const o9248:int = 729;
      
      public static const o15314:int = 730;
      
      public static const o17514:int = 748;
      
      public static const o11162:int = 749;
      
      public static const o6772:int = 750;
      
      public static const o6151:int = 751;
      
      public static const o4874:int = 752;
      
      public static const o14401:int = 753;
      
      public static const o13135:int = 756;
      
      public static const o7261:int = 754;
      
      public static const o4888:int = 755;
      
      public static const o5235:int = 759;
      
      public static const o14547:int = 758;
      
      public static const o18505:int = 757;
      
      public static const o14239:int = 760;
      
      public static const o4618:int = 761;
      
      public static const o11949:int = 763;
      
      public static const o5963:int = 764;
      
      public static const o18471:int = 762;
      
      public static const o9499:int = 2000;
       
      
      public function o20543()
      {
         super();
      }
      
      public static function o2882(param1:int) : Boolean
      {
         return param1 == 664 || param1 == 665;
      }
      
      public static function o7763() : Vector.<int>
      {
         var _loc1_:Vector.<int> = new Vector.<int>();
         _loc1_.push(664);
         _loc1_.push(665);
         return _loc1_;
      }
      
      public static function o17755() : Array
      {
         return [631,632,633,614,615,616,617,630,623,664,665,722,723,724,725,726,727,728,729,730,748,749,750,751,752,753,756,754,755,759,758,757,760,761,763,764,762,610,611,612,613,669,2000];
      }
      
      public static function o20768() : Array
      {
         return [725,726,727,728,729,730,748,749,750,751,752,753,756,754,755,759,758,757,760,761,763,764,762];
      }
      
      public static function o1224(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:Array = o20768();
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            if(_loc3_[_loc2_] == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function o5464(param1:int) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case 725:
               return 184;
            case 726:
               return 185;
            case 727:
               return 186;
            case 728:
               return 187;
            case 729:
               return 188;
            case 730:
               return 189;
            case 748:
               return 194;
            case 749:
               return 195;
            case 750:
               return 196;
            case 751:
               return 197;
            case 752:
               return 198;
            case 753:
               return 199;
            case 756:
               return 200;
            case 754:
               return 201;
            case 755:
               return 202;
            case 759:
               return 203;
            case 758:
               return 204;
            case 757:
               return 205;
            case 760:
               return 206;
            case 761:
               return 207;
            case 763:
               return 208;
            case 764:
               return 211;
            case 762:
               return 212;
            default:
               return -1;
         }
      }
      
      public static function o14329(param1:String) : int
      {
         var _loc2_:* = param1;
         switch(_loc2_)
         {
            case "Planet Stormer Ltd Edition":
               return 725;
            case "Ronson WPX Incinerator":
               return 726;
            case "HIKS A10":
               return 727;
            case "Donderbus":
               return 728;
            case "RIA 15 SE":
               return 729;
            case "Torment":
               return 730;
            case "Handkanone":
               return 748;
            case "CM 505 Alpha Ltd. Edition":
               return 749;
            case "HIKS S4000":
               return 750;
            case "Vitriol":
               return 751;
            case "CM 000 Kelvin":
               return 752;
            case "Ronson 5X5":
               return 753;
            case "Supermarine Alpha Ltd Edition":
               return 756;
            case "RIA 8A":
               return 754;
            case "CM Laser Drill":
               return 755;
            case "CM 467":
               return 759;
            case "CM 352 Quasar":
               return 758;
            case "Ricochet":
               return 757;
            case "Bayonet":
               return 760;
            case "RIA 75":
               return 761;
            case "HIKS 888 CAW":
               return 763;
            case "Zerfallen":
               return 764;
            case "CM Proton Arc":
               return 762;
            default:
               return -1;
         }
      }
      
      public static function o18407(param1:o444) : Boolean
      {
         var _loc2_:Array = [603,604,605,606,607,608,609,628,629,634];
         return _loc2_.indexOf(param1.o5693) >= 0;
      }
   }
}
