class FiveFourController < ApplicationController
  def roll_five_four
    @rolls = []
    
    5.times do  # Change this to roll five dice
      die = rand(1..4)
      @rolls.push(die)
    end
    
    @sum = @rolls.sum
    @outcome = "You rolled a #{@rolls.join(', ')} for a total of #{@sum}."

    render({ template: "pages/five_four" })
  end
end
