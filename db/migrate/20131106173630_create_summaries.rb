class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.string :text

      t.timestamps
    end
  end
end
