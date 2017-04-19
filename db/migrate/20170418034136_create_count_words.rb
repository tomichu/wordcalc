class CreateCountWords < ActiveRecord::Migration[5.0]
  def change
    create_table :count_words do |t|
      t.string :title
      t.text :text_to_count

      t.timestamps
    end
  end
end
