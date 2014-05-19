class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content      
		t.datetime :posted_on
		t.references :user #t.integer :user_id

      t.timestamps
    end
  end
end
