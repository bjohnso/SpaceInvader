#include <string>
#include <ncurses.h>

#include "Game.hpp"

WINDOW* wnd;

int Game::init() {
    wnd = initscr();
    cbreak();
    noecho();
    clear();
    refresh();

    return 0;
}

void Game::run() {
    move(5, 5);

    std::string text = "Hello World";
    for (int i = 0; i < text.size(); i++){
        addch(text[i]);
        addch(' ');
    }
    refresh();

    while(1);
}

void Game::close(){
    endwin();
}