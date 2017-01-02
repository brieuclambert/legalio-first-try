class CreateDossiers < ActiveRecord::Migration[5.0]
  def change
    create_table :dossiers do |t|
      t.string :name
      t.string :client
      t.integer :result

      t.timestamps
    end
  end
end
