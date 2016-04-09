class AddSolutionColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :solution, :string 
  end
end
