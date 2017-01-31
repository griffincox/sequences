class GuessesController < ApplicationController
  def all_guesses
    if params[:first_number].present? && params[:second_number].present? && params[:third_number].present?
      @first_number = params[:first_number]
      @second_number = params[:second_number]
      @third_number = params[:third_number]
    else
      @first_number = ""
      @second_number = ""
      @third_number = ""
    end

    @return = ""
    if (@first_number.to_i < @second_number.to_i) && (@second_number.to_i < @third_number.to_i)
      @return = @first_number + ", " + @second_number + ", " + @third_number + " Yes!"
    else
      @return = @first_number + ", " + @second_number + ", " + @third_number + " No."
    end
    render("all_guesses.html.erb")
  end
  def show_answer
    if params[:rule].present?
      @answer = params[:rule]
    else
      @answer = ""
    end
    render("show_answer.html.erb")
  end
end
