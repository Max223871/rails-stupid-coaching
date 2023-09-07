class Question < ApplicationRecord
  validates :content, presence: true

  def answer
    # TODO: Implement the logic for generating an answer to the question.
    "The answer to your question is..."
  end
end
