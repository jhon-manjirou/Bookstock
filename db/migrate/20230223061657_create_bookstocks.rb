class CreateBookstocks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstocks do |t|
      t.string :title
      t.string :sort
      t.string :author

      t.timestamps
    end
  end
end
