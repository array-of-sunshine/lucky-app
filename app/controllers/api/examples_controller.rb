class Api::ExamplesController < ApplicationController
  def fortune_method
    @fortunes = ["you will be lucky", "you will be unlucky", "someething else"]
    @selected_fortune = @fortunes.sample
    render "fortune.json.jbuilder"
  end

  def lotto_action
    # make a random number 6 times
    @numbers = []
    6.times do
      @numbers << rand(1..60)
    end
    p "*" * 50
    p @numbers
    p "*" * 50
    # show the user all 6 numbers
    render "lotto_view.json.jbuilder"
  end

  def page_count
    render "page_count.json.jbuilder"
  end
end
