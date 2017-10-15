class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :vote_count, default: 0, null: false
      t.integer :answer_id
    end
  end
end
