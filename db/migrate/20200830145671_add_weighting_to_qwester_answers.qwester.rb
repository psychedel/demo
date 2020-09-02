# This migration comes from qwester (originally 20130402074240)
class AddWeightingToQwesterAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :qwester_answers, :weighting, :float, :default => 0
  end
end
