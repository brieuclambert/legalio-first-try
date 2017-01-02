class CreateBiens < ActiveRecord::Migration[5.0]
  def change
    create_table :biens do |t|
      t.string :name
      t.integer :valeur_emprunt
      t.integer :cout_acquisition
      t.integer :valeur_actuelle
      t.references :dossier, foreign_key: true

      t.timestamps
    end
  end
end
