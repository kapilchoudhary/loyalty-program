class CreateUserRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :user_rewards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :loyalty_reward, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
