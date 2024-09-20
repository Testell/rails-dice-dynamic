class RandomDiceController < ApplicationController
  def roll_random
    random_dice = params[:dice].to_i
    random_sides = params[:sides].to_i

    @rolls = []
    
    random_dice.times do
      die = rand(1..random_sides)
      @rolls.push(die)
    end

    @outcome = "You rolled: #{@rolls.join(', ')}."

    render({ template: "pages/random_dice" })
  end
end
