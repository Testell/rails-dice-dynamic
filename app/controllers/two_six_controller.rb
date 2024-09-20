class TwoSixController < ApplicationController
  def roll_two_six
    @rolls = []

    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end

    render({ template: "pages/two_six" })
  end
end
