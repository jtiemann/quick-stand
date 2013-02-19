class CreateQuickStands < ActiveRecord::Migration
  def change
    create_table :quick_stands do |t|
      t.string :do_today
      t.string :did_yesterday
      t.string :blockers
      t.string :notes
      t.integer :rating
      t.string :develop
      t.string :email

      t.timestamps
    end
  end
end
