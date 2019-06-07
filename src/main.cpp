
#include "Game.hpp"

int main(){
    Game game = Game();
    int init_status = game.init();

    if (init_status == 0){
        game.run();
    }

    game.close();

    return 0;
}