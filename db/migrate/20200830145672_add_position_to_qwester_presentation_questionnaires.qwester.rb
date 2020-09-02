# This migration comes from qwester (originally 20130502082540)
class AddPositionToQwesterPresentationQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    add_column :qwester_presentation_questionnaires, :position, :integer
  end
end
