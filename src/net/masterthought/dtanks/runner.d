module net.masterthought.dtanks.runner;

import net.masterthought.dtanks.match;
import net.masterthought.dtanks.arena;
import net.masterthought.dtanks.guiwindow;
import net.masterthought.dtanks.bot.brain;

import net.masterthought.dtanks.corebot;
import net.masterthought.dtanks.samples.superbot;

class Runner {

  private Match match;

  this(int width, int height){
     this.match = new Match(Arena(width,height));
  }

  public void start(){
    //this.match.start();

addBots();

 GuiWindow gui = new GuiWindow(this.match);
   gui.execute();

  }

  public void addBots(){
    Brain[] brains = [new SuperBot(this.match.arena)];
    CoreBot[] bots = [];
    foreach(brain ; brains){
       bots ~= CoreBot.newRandomLocation(this.match.arena, brain);
    }
    this.match.addBots(bots);
  }

}





