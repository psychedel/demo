# This migration comes from qwester (originally 20121122141628)
class RemoveQuestionnaireFromAnswer < ActiveRecord::Migration[6.0]
  def up
    remove_column :qwester_answers, :questionnaire_id
  end

  def down
    add_column :qwester_answers, :questionnaire_id, :integer
  end
end
