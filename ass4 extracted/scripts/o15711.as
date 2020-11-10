package
{
   import flash.utils.Dictionary;
   
   public class o15711
   {
      
      public static var o2108:Dictionary = null;
       
      
      public function o15711()
      {
         super();
      }
      
      private static function o19692(param1:String) : String
      {
         return param1;
      }
      
      public static function initialise() : void
      {
         o9268("com.ninjakiwi.sas4.scripts.projectiles.AerialBombardmentRocket");
      }
      
      public static function o9268(param1:String) : Class
      {
         var _loc3_:* = null;
         if(o2108 == null)
         {
            o2108 = new Dictionary();
            _loc3_ = o5049;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.AerialBombardmentRocket"] = o12340;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.AcidPool"] = o15095;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.FlameThrowerBullet"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Bullet"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Flame"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.FlameBall"] = o8810;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.RepatitisProjectile"] = o10707;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Spit"] = o13754;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Clense"] = o17726;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.AerialBombardmentMarker"] = o7887;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Grenade"] = o1736;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.GroundFire"] = o432;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Antidote"] = o15166;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.SpitPool"] = o4254;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.EnemyRocket"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Medkit"] = o4198;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.EnemyFlameThrowerBullet"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Rocket"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.RegurgPool"] = o14198;
            o2108["com.ninjakiwi.sas4.scripts.avatars.Assault"] = o20757;
            o2108["com.ninjakiwi.sas4.scripts.avatars.Medic"] = o10351;
            o2108["com.ninjakiwi.sas4.scripts.avatars.Heavy"] = o1009;
            o2108["com.ninjakiwi.sas4.scripts.spawners.SurvivorSpawner"] = o17421;
            o2108["com.ninjakiwi.sas4.scripts.spawners.RoomScript"] = o17805;
            o2108["com.ninjakiwi.sas4.scripts.spawners.Room"] = o17805;
            o2108["com.ninjakiwi.sas4.scripts.spawners.VIPBossSpawner"] = o15535;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TriggeredSpawnEncounter"] = o6614;
            o2108["com.ninjakiwi.sas4.scripts.spawners.EventTriggeredContSpawner"] = o4994;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TriggeredContinuousSpawner"] = o8107;
            o2108["com.ninjakiwi.sas4.scripts.spawners.ActivatedWaveSpawner"] = o6384;
            o2108["com.ninjakiwi.sas4.scripts.spawners.ZombiePod"] = o18843;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TriggeredWaveSpawner"] = o17782;
            o2108["com.ninjakiwi.sas4.scripts.spawners.OnslaughtSpawner"] = o5460;
            o2108["com.ninjakiwi.sas4.scripts.spawners.PurgeSpawner"] = o19751;
            o2108["com.ninjakiwi.sas4.scripts.spawners.PowerMasterController"] = o13503;
            o2108["com.ninjakiwi.sas4.scripts.spawners.EventSpawner"] = o16668;
            o2108["com.ninjakiwi.sas4.scripts.spawners.LastStandSpawner"] = o7649;
            o2108["com.ninjakiwi.sas4.scripts.spawners.SurvivorHunterSpawner"] = o9190;
            o2108["com.ninjakiwi.sas4.scripts.spawners.OnslaughtBossSpawner"] = o5048;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TimedAreaSpawner"] = o10410;
            o2108["com.ninjakiwi.sas4.scripts.spawners.ActivatedBossSpawner"] = o9973;
            o2108["com.ninjakiwi.sas4.scripts.spawners.VIPMasterController"] = o11088;
            o2108["com.ninjakiwi.sas4.scripts.spawners.EggBossSpawn"] = o10429;
            o2108["com.ninjakiwi.sas4.scripts.spawners.SpawnType"] = o6515;
            o2108["com.ninjakiwi.sas4.scripts.spawners.OnOffContinuousSpawner"] = o8905;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TriggeredAreaSpawner"] = o16618;
            o2108["com.ninjakiwi.sas4.scripts.spawners.SpawnEncounter"] = o9239;
            o2108["com.ninjakiwi.sas4.scripts.spawners.ActivatedAreaSpawner"] = o6335;
            o2108["com.ninjakiwi.sas4.scripts.display.AnimateNode"] = o7513;
            o2108["com.ninjakiwi.sas4.scripts.display.BlackPolygon"] = o6548;
            o2108["com.ninjakiwi.sas4.scripts.doors.DestroyableBarrier"] = o4657;
            o2108["com.ninjakiwi.sas4.scripts.doors.SurvivorSecretDoor"] = o15813;
            o2108["com.ninjakiwi.sas4.scripts.doors.OnslaughtMainDoors"] = o8311;
            o2108["com.ninjakiwi.sas4.scripts.doors.TrainDoor"] = o2829;
            o2108["com.ninjakiwi.sas4.scripts.doors.SurvivorBarriers"] = o6702;
            o2108["com.ninjakiwi.sas4.scripts.doors.WaitForPlayersDoor"] = o2303;
            o2108["com.ninjakiwi.sas4.scripts.doors.Barrier"] = o17241;
            o2108["com.ninjakiwi.sas4.scripts.doors.LabDoor"] = o7507;
            o2108["com.ninjakiwi.sas4.scripts.doors.SecurityDoor"] = o1861;
            o2108["com.ninjakiwi.sas4.scripts.doors.TimedDoor"] = o9395;
            o2108["com.ninjakiwi.sas4.scripts.doors.PowerOutDoor"] = o8155;
            o2108["com.ninjakiwi.sas4.scripts.doors.StarTrekDoor"] = o67;
            o2108["com.ninjakiwi.sas4.scripts.doors.PurgeDoor"] = o4149;
            o2108["com.ninjakiwi.sas4.scripts.doors.KillEnemiesDoor"] = o8671;
            o2108["com.ninjakiwi.sas4.scripts.physics.NoGoZone"] = o10948;
            o2108["com.ninjakiwi.sas4.scripts.physics.StaticWall"] = o13977;
            o2108["com.ninjakiwi.sas4.scripts.victoryConditions.VaccineVictoryCondition"] = o8201;
            o2108["com.ninjakiwi.sas4.scripts.victoryConditions.OnslaughtVictoryCondition"] = o18962;
            o2108["com.ninjakiwi.sas4.scripts.victoryConditions.SurvivorsVictoryCondition"] = o15362;
            o2108["com.ninjakiwi.sas4.scripts.loot.AreaLoot"] = o6009;
            o2108["com.ninjakiwi.sas4.scripts.loot.DroppedLoot"] = o13742;
            o2108["com.ninjakiwi.sas4.scripts.extras.LabSecurityDoorSwitch"] = o5904;
            o2108["com.ninjakiwi.sas4.scripts.extras.WaitForPlayersExit"] = o20196;
            o2108["com.ninjakiwi.sas4.scripts.extras.PodsHudController"] = o14779;
            o2108["com.ninjakiwi.sas4.scripts.extras.TheFatController"] = o4079;
            o2108["com.ninjakiwi.sas4.scripts.extras.OnslaughtScriptsController"] = o9549;
            o2108["com.ninjakiwi.sas4.scripts.extras.TheTimeKeeper"] = o20894;
            o2108["com.ninjakiwi.sas4.scripts.extras.Teleporter"] = o15442;
            o2108["com.ninjakiwi.sas4.scripts.extras.RoofHider"] = o8462;
            o2108["com.ninjakiwi.sas4.scripts.extras.VIPDestroyableController"] = o1136;
            o2108["com.ninjakiwi.sas4.scripts.extras.FlickeringLight"] = o6265;
            o2108["com.ninjakiwi.sas4.scripts.extras.AnimationDisplay"] = o266;
            o2108["com.ninjakiwi.sas4.scripts.extras.RandomPathBlocker"] = o18477;
            o2108["com.ninjakiwi.sas4.scripts.extras.PowerOutDecals"] = o1565;
            o2108["com.ninjakiwi.sas4.scripts.extras.TriggerArea"] = o1642;
            o2108["com.ninjakiwi.sas4.scripts.extras.ChatRoomScript"] = o2927;
            o2108["com.ninjakiwi.sas4.scripts.extras.MpDebug"] = o9383;
            o2108["com.ninjakiwi.sas4.scripts.objects.CashRegister"] = o2603;
            o2108["com.ninjakiwi.sas4.scripts.objects.ParkBench"] = o13014;
            o2108["com.ninjakiwi.sas4.scripts.objects.TrashCan"] = o11105;
            o2108["com.ninjakiwi.sas4.scripts.objects.SwatTruck"] = o20402;
            o2108["com.ninjakiwi.sas4.scripts.objects.PowerOutSpawnHole"] = o144;
            o2108["com.ninjakiwi.sas4.scripts.objects.Chair"] = o7307;
            o2108["com.ninjakiwi.sas4.scripts.objects.Crate"] = o16637;
            o2108["com.ninjakiwi.sas4.scripts.objects.ExplodingCar"] = o2242;
            o2108["com.ninjakiwi.sas4.scripts.objects.BulletReactionObject"] = o9931;
            o2108["com.ninjakiwi.sas4.scripts.objects.GlobalCrate"] = o6906;
            o2108["com.ninjakiwi.sas4.scripts.objects.MansionObject"] = o1765;
            o2108["com.ninjakiwi.sas4.scripts.objects.GlobalBarrel"] = o16496;
            o2108["com.ninjakiwi.sas4.scripts.objects.Barrel"] = o15905;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Regurgitator"] = o8363;
            o2108["com.ninjakiwi.sas4.scripts.enemies.ZombDroidServant"] = o11259;
            o2108["com.ninjakiwi.sas4.scripts.enemies.ZombieMech"] = o11918;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Repatitis"] = o1481;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Devastator"] = o13795;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Loaderbot"] = o19775;
            o2108["com.ninjakiwi.sas4.scripts.enemies.SpewWorm"] = o16609;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Spitter"] = o14541;
            o2108["com.ninjakiwi.sas4.scripts.enemies.RepatitisJunior"] = o19671;
            o2108["com.ninjakiwi.sas4.scripts.enemies.ShieldedZombie"] = o18111;
            o2108["com.ninjakiwi.sas4.scripts.enemies.ZombDroidSoldier"] = o2379;
            o2108["com.ninjakiwi.sas4.scripts.enemies.RunnerZombie"] = o1764;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Worm"] = o20015;
            o2108["com.ninjakiwi.sas4.scripts.enemies.PlaceHolderEnemy"] = o726;
            o2108["com.ninjakiwi.sas4.scripts.enemies.FatZombie"] = o3092;
            o2108["com.ninjakiwi.sas4.scripts.enemies.BulletSponge"] = o7901;
            o2108["com.ninjakiwi.sas4.scripts.enemies.Wicker"] = o2514;
            o2108["com.ninjakiwi.sas4.scripts.enemies.SlowZombie"] = o2623;
            o2108["com.ninjakiwi.sas4.scripts.enemies.FasterZombie"] = o7027;
            o2108["com.ninjakiwi.sas4.scripts.enemies.ED209"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.spawners.TestSpawner"] = o7988;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.PlaceableMedikit"] = o4487;
            o2108["com.ninjakiwi.sas4.scripts.extras.MessageTriggerScript"] = o5538;
            o2108["com.ninjakiwi.sas4.scripts.extras.PodsBurstAnim"] = o5854;
            o2108["com.ninjakiwi.sas4.scripts.extras.TriggeredAnimation"] = o4130;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.AlphaVirusModeData"] = o6617;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.AlphaVirusMode"] = o13606;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.AlphaVirusSpawner"] = o19602;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.LastManStanding"] = o3474;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.Apocalypse"] = o12468;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.LastManSpawner"] = o15188;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.ApocalypseSpawner"] = o2637;
            o2108["com.ninjakiwi.sas4.scripts.objects.ZombieEggArena"] = o19132;
            o2108["com.ninjakiwi.sas4.scripts.physics.GhostWall"] = o19935;
            o2108["com.ninjakiwi.sas4.scripts.objects.HVMSoldier"] = o13538;
            o2108["com.ninjakiwi.sas4.scripts.victoryConditions.IceStationVictoryCondition"] = o13741;
            o2108["com.ninjakiwi.sas4.scripts.spawners.IceStationSpawner"] = o15928;
            o2108["com.ninjakiwi.sas4.scripts.doors.RepairableBarrier"] = o9251;
            o2108["com.ninjakiwi.sas4.scripts.objects.IceStationAmbo"] = o16962;
            o2108["com.ninjakiwi.sas4.scripts.objects.IceStationTruck"] = o8742;
            o2108["com.ninjakiwi.sas4.scripts.doors.IceStationGate"] = o2830;
            o2108["com.ninjakiwi.sas4.scripts.doors.IceRoadBlockade"] = o7314;
            o2108["com.ninjakiwi.sas4.scripts.display.BloodTexture"] = o15817;
            o2108["com.ninjakiwi.sas4.scripts.display.BloodTextureTrigger"] = o3856;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.BasicRocket"] = o15897;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.BasicFlameBullet"] = o8715;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.Disc"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.FlameConeProj"] = o18623;
            o2108["com.ninjakiwi.sas4.scripts.spawners.OnslaughtNightmareSpawner"] = o1074;
            o2108["com.ninjakiwi.sas4.scripts.editor.AvatarSpawn"] = o6603;
            o2108["com.ninjakiwi.sas4.scripts.victoryConditions.MeltdownVictoryCondition"] = o13502;
            o2108["com.ninjakiwi.sas4.scripts.doors.PhaseDoor"] = o15308;
            o2108["com.ninjakiwi.sas4.scripts.doors.MeltdownMainDoor"] = o7390;
            o2108["com.ninjakiwi.sas4.scripts.extras.MeltdownReactor"] = o4177;
            o2108["com.ninjakiwi.sas4.scripts.extras.MeltdownRoom"] = o15692;
            o2108["com.ninjakiwi.sas4.scripts.extras.GasRoom"] = o8467;
            o2108["com.ninjakiwi.sas4.scripts.objects.DeskComputer"] = o11309;
            o2108["com.ninjakiwi.sas4.scripts.spawners.ActivatedWaveSpawnerTrim"] = o2772;
            o2108["com.ninjakiwi.sas4.scripts.extras.DoomRoom"] = o5366;
            o2108["com.ninjakiwi.sas4.scripts.physics.FailSafeTeleportZone"] = o7717;
            o2108["com.ninjakiwi.sas4.scripts.physics.FailSafeTeleportZoneNamed"] = o15830;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractAmmoRecoveryData"] = o187;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractAmmoRecovery"] = o190;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractEquipmentSalvage"] = o13037;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractEquipmentSalvageData"] = o2012;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractZombieHotspot"] = o4416;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractZombieHotspotData"] = o15401;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractSupportWeaponsShipmentData"] = o4211;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractSupportWeaponsShipment"] = o2795;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractDataRetrievalData"] = o6466;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractScripts.TerminalData"] = o7950;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractTypes.ContractDataRetrieval"] = o8147;
            o2108["com.ninjakiwi.sas4.scripts.contracts.ContractsMasterController"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.contracts.contractData.ContractData"] = o19639;
            o2108["com.ninjakiwi.sas4.scripts.doors.FailSafeTeleportZone"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.display.ParallaxedAnimatedNode"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.spawners.Budget"] = _loc3_;
            o2108["com.ninjakiwi.sas4.scripts.loot.DropSpecificLoot"] = o6555;
            o2108["com.ninjakiwi.sas4.scripts.display.StaticAnimatedNode"] = o14856;
            o2108["com.ninjakiwi.sas4.scripts.display.BlendModeNode"] = o4074;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.SampleCollection"] = o678;
            o2108["com.ninjakiwi.sas4.scripts.gameModes.SampleCollectionSpawner"] = o9667;
            o2108["com.ninjakiwi.sas4.scripts.projectiles.PlayerAcidPool"] = o1619;
            o2108["com.ninjakiwi.sas4.scripts.loot.FestivalHolidayLootSpawn"] = o10909;
         }
         var _loc2_:* = o2108[param1];
         if(_loc2_ == null)
         {
            _loc2_ = _loc3_;
            trace(param1 + " missing from scripts.");
         }
         return _loc2_;
      }
   }
}
