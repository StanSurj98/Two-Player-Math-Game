class Question
  @@question_number = 0
  attr_reader :question, :answer
  def initialize
    @val1 = random_number
    @val2 = random_number
    @question = "What does #{@val1} plus #{@val2} equal?"
    @answer = @val1 + @val2
    @@question_number += 1
    
  end

  def self.total_number_of_questions
    @@question_number
  end


  def random_number
    rand(1..20)
  end


end

# question1 = Question.new

# puts question1.question
# puts question1.answer

