class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :accountname
      t.date :duedate
      t.boolean :asap
      t.string :type
      t.text :description
      t.text :specifications
      t.string :contact
      t.string :requestname
      t.text :comments
      t.boolean :artreview
      t.boolean :contentreview
      t.text :references

      t.timestamps
    end
  end
end
