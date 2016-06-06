class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :students, :sex, :string
  end
end
