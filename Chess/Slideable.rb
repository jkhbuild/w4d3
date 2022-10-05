module Slideable
require "byebug"
    HORIZONTAL_DIRS = [
        [0, -1], # left [:dx, :dy]
        [0, 1], # right
        [1, 0], # up
        [-1, 0]  # down
      ].freeze
      # DIAGONAL_DIRS stores an array of diagonal directions
      DIAGONAL_DIRS = [
        [:dx, :dy], # up + left
        [:dx, :dy], # up + right
        [:dx, :dy], # down + left
        [:dx, :dy]  # down + right
      ].freeze


      def horizontal_dirs
        HORIZONTAL_DIRS
      end

      def diagonal_dirs
        DIAGONAL_DIRS
      end

      # should return an array of places a Piece can move to
      def moves

        # create an array to collect moves
        mvs = []
        # iterate over each of the directions in which a Slideable piece can move
        self.move_dirs.each do |direction|
          debugger
            x, y = self.pos # x = 2 y = 2
            until !x.between?(0, 7) || !y.between?(0, 7) #
              debugger
              x += direction.first # 2 + 0 = 2
                y += direction.last
                debugger# 2 + -1 = 1
                if self.board[[x ,y]].is_a?(Null_Piece) #
                    mvs << [x, y]
                end
            end
        end
        mvs
          # use the              subclass' move_dirs method to get this info
          # for each direction, collect all possible moves in that direction

            # and add them to your moves array
            # use the grow_unblocked_moves_in_dir helper method

          # return the final array of moves (containing all the possible moves in all directions)
      end

      private

      def move_dirs
        # subclass implements this
        raise NotImplementedError # this only execute if we have forgotten to implement it in our SubClass
      end

      # this method is responsible for collecting all the moves in a given direction
      # that given direction is represented by the combination of a dx and dy
      def grow_unblocked_moves_in_dir(dx, dy)
        # create an array to collect moves

        # get the piece's current row and current column

        # in a loop:
          # continually increment the piece's current row and current column to generate the next position
          # stop looping if the next position is invalid (not on the board); our piece can't move any further
          # if the next position is empty, the piece can move here, so add the next position to the moves array
          # if the next position is occupied with a piece of the opposite color, then the piece can move here and capture the opposing piece, so add the next position to the moves array
            # but, the piece cannot continue to move past this captured piece, so stop your loop
          # if the next position is occupied with a piece of the same color, stop the loop

        # return the final moves array

      end
end
