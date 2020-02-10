class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_user = params[:question]

    if @question_user == 'I am going to work'
      @answer = 'Great!'
    elsif @question_user.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
