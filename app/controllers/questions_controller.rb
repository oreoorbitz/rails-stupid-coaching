class QuestionsController < ApplicationController
  def ask
  end

  def answer
     @question = params[:question]
     @answer = nil

  case @question
  when "I am going to work"
    @answer = "great"
  when /.*\?/
    @answer = "Silly question, get dressed and go to work!."
  else
    @answer = "I don't care, get dressed and go to work!"
  end

  end
end
