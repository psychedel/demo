# This migration comes from qwester (originally 20121126152146)
class AddRuleToRuleSets < ActiveRecord::Migration[6.0]
  def change
    add_column :qwester_rule_sets, :rule, :text
  end
end
