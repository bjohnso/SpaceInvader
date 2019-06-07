#include <string>
#include <iostream>
#include <stdio.h>

#include "Game.hpp"

Game::Game(){
    return ;
}

Game::~Game(){
    return ;
}

int Game::init() {
    this->wnd = initscr();
    cbreak();
    noecho();
    clear();
    refresh();

    return 0;
}

void Game::run() {
    move(5, 5);

    std::string text = "Hello World";
    for (size_t i = 0; i < text.size(); i++){
        addch(text[i]);
        addch(' ');
    }
    refresh();

    while(1);
}

void Game::close(){
    endwin();
}