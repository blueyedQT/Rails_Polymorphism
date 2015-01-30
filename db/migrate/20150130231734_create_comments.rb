class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.text :comment
      t.references :table, polymorphic: true, index: true

      t.timestamps
    end
  end
end
