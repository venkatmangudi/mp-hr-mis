class AddRelationshipIdToDependent < ActiveRecord::Migration
  def change
    add_column :dependents, :relationship_id, :integer
  end
end
