require "singleton"

class Null_Piece < Piece
    include Singleton

    attr_reader :symbol
    def initialize
        super
        @symbol = "_"
    end
end
