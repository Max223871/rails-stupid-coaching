# frozen_string_literal: true

# 'This controller handles user questions and generates answers from the Coach'.
class QuestionsController < ApplicationController
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question
    else
      render :new
    end
  end

  def answer
    @question = params[:question]
    @answer = case @question
              when 'I am going to work'
                'Great!'
              when ->(q) { q.end_with?('?') }
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end

  def ask
    # TODO: Implement the logic for the ask action.
  end

  def show
    @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end
