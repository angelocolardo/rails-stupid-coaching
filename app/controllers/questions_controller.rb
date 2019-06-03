class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_to_answer = params[:question]
    @answer = if @question_to_answer == 'I am going to work'
                'Great!'
              elsif @question_to_answer.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
