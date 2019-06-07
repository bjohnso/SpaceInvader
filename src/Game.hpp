#ifndef GAME_HPP
# define GAME_HPP

#include <ncurses.h>
class Game{
    private:
        WINDOW* wnd;

    public:
        Game(void);
        ~Game(void);
        int init(void);
        void run(void);
        void close(void);
};

#endif