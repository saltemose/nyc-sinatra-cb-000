class CreateFigureTitles < ActiveRecord::Migration
  def change
    rename_column :figure_titles, :figure_id, :figure_ids
    rename_column :figure_titles, :title_id, :title_ids 
  end
end
