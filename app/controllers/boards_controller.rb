class BoardsController < ApplicationController
    before_action :set_board, only: [:show]
    def index
        @boards = Board.all
    end

    def show
    end

    def new
        @board = Board.new
    end

    def create
        @board = Board.new(board_params)
        respond_to do |format|
            if @board.save
                format.html {redirect_to @board}
                format.json {render :show, status: :created, location: @board}
            else
                format.html {render :new}
            end
        end
    end
    


    private
    def set_board
        @board = Board.find(params[:id])
    end

    def board_params
        params.require(:board).permit(:title, :description)
    end

end
