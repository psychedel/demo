# This migration comes from qwester (originally 20121009160807)
class AddQuestionnaireIdToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :qwester_answers, :questionnaire_id, :integer
  end
end
