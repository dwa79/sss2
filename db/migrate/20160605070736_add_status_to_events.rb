class AddStatusToEvents < ActiveRecord::Migration
  def change
    add_column :students, :sex, :string
    add_colomn :students, :married, :boolean
  end
end
