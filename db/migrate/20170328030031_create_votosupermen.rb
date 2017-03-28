class CreateVotosupermen < ActiveRecord::Migration[5.0]
  def change
    create_table :votosupermen do |t|
      t.string :nombre
      t.string :email

      t.timestamps
    end
  end
end
