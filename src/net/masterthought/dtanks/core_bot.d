module net.masterthought.dtanks.corebot;

import net.masterthought.dtanks.arena;
import net.masterthought.dtanks.heading;
import net.masterthought.dtanks.point;
import net.masterthought.dtanks.bot.brain;
import net.masterthought.dtanks.bot.radar;
import net.masterthought.dtanks.bot.turret;
import net.masterthought.dtanks.bot.sensor;
import net.masterthought.dtanks.bot.command;
import net.masterthought.dtanks.samples.superbot;
import net.masterthought.dtanks.normalizedspeed;
import net.masterthought.dtanks.normalizedheading;
import net.masterthought.dtanks.configuration;

import dsfml.graphics;

import std.stdio;
import core.thread;
import std.math;
import std.range;
import std.conv;

class CoreBot {

 enum MAX_DELTA = 1.0/0.0;

  private Arena arena;
  private Brain brain;
  public Radar radar;
  public Turret turret;
  private int ticks;
  public int health;
  public int firePower;
  public int gunEnergy;
  public double speed;
  public Heading heading;
  public Point position;
  public Window guiWindow;

  this(Arena arena, Brain brain){
     this.arena = arena;
     this.brain = brain;
     this.ticks = 0;
     this.position = Point(0, 0, this.arena);
     this.health = 100;
     this.speed = 0.0;
     this.firePower = 0;
     this.gunEnergy = 10;
     this.heading  = new Heading();
     this.radar = new Radar(this, this.heading.clone());
     this.turret = new Turret(this.heading.clone());
  }

  public static CoreBot newRandomLocation(Arena arena, Brain brain){
     CoreBot bot = new CoreBot(arena,brain);
     bot.position = Point.rand(arena);
     Heading randHeading = Heading.rand();
     bot.heading = randHeading;
     bot.turret.setHeading(randHeading.radians);
     bot.radar.setHeading(randHeading.radians);
     bot.brain.setSensors(bot.sensors());
     return bot;
  }

  public string getName(){
    return this.brain.name();
  }

  public void setHealth(int value){
    this.health = value;
  }

  //public void setFirePower(int value){
  //  this.firePower = value;
  //}

  public void reduceHealth(double reduceBy){
    this.health -= reduceBy;
  }

  public bool isDead(){
    return this.health <= 0;
  }

  public void adjustFirePower(){
    if(!this.gunEnergy){
      this.gunEnergy = 10;
    }
    if(this.gunEnergy <= 0){
      this.firePower = 0;
    } else {
      this.gunEnergy -= (this.firePower ^^ 1.5) * 10;
    }
    this.gunEnergy += 1;
    if(this.gunEnergy > 10){
      this.gunEnergy = 10;
    }
  }

  public void tick(){
    this.ticks += 1;
    this.tickBrain();
    this.position = this.position.move(this.heading.radians,to!double(this.speed),true);
    adjustFirePower();
  }

  public bool isFiring(){
    return this.firePower && this.firePower > 0;
  }

  public void setGuiWindow(Window window){
    this.guiWindow = window;
  }

  public void tickBrain(){
    executeCommand(brain.tick(sensors()));
  }

  public void executeCommand(Command command){
    writeln(command);

    if(command.heading){
      this.heading = new NormalizedHeading().normalize(this.heading,command.heading, Heading.FULL_RANGE,Configuration().bot().turnStep);
    }

    if(command.turretHeading){
      this.turret.setHeading(command.turretHeading.radians);
    }

   this.speed = new NormalizedSpeed().normalize(this.speed,command.speed, Configuration().bot().speed,Configuration().bot().speedStep);

    if(command.firePower){
      this.firePower = command.firePower;
    }

    if(command.radarHeading){
      this.radar.setHeading(command.radarHeading.radians);
    }

  }

  public Sensor sensors(){
    Sensor sensor = Sensor();
    sensor.ticks = ticks;
    sensor.health  = health;
    sensor.speed = speed;
    sensor.position = position;
    sensor.heading = this.heading;
    sensor.radar = this.radar;
    sensor.radarHeading = radar.heading;
    sensor.turretHeading = turret.getHeading();
    sensor.guiWindow = guiWindow;
    return sensor;
  }
}
