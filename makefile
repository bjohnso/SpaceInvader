# Name of the program.
NAME     := SpaceInvader

# Sources and objects.
SRC_DIR	:= ./src
OBJ_DIR	:= ./bin
SRCS     := $(wildcard $(SRC_DIR)/*.cpp)
HDRS     := $(wildcard $(SRC_DIR)/*.hpp)
OBJS     := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRCS))

# Define all the compiling flags.
CXX      := g++
CXXFLAGS := -std=c++11 -pedantic -Wall -Werror -Wextra

# Compile and create everything.
all: $(OBJ_DIR) $(NAME)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)
	@echo "do the things"

$(OBJ_DIR)/%.o:$(SRC_DIR)/%.cpp
	$(CXX) $(CXXFLAGS) -g -o $@ -c $<

# Compile the program with the objects.
$(NAME): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(NAME) -lncurses

# Rule to remove all the object files.
clean:
	@rm -f $(OBJS)
	@echo "[INFO] Objects removed!"

# Rule to remove everything that has been created by the makefile.
fclean: clean
	@rm -f $(NAME)
	@echo "[INFO] $(NAME) removed!"

# Rule to re-make everything.
re:     fclean all

# Makes sure that gnu make will still run even if files called
# clean / fclean / all and re already exist in the directory
.PHONY: all clean fclean re