class CreateSitemarxModels < ActiveRecord::Migration
  def change
    create_table :sitemarx_models do |t|
      t.string :url
      t.string :name
      t.datetime :saved_at

      t.timestamps
    end
  end
end
