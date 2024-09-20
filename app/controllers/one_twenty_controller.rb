class OneTwentyController < ApplicationController
  def roll_one_twenty
    @rolls = []
    @die = rand(1..20)
    @rolls.push(@die)
    @outcome = "You rolled a #{@die}."

    render({ template: "pages/one_twenty" })
  end
end
