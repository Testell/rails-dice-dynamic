class TwoTenController < ApplicationController
  def roll_two_ten
    @rolls = []

    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end

    render({ template: "pages/two_ten" })
  end
end
