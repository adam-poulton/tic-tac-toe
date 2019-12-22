require "spec_helper"

module TicTacToe
  describe Cell do
    
    context "#intialize" do
      it "is initialized with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end
    end

  end
end