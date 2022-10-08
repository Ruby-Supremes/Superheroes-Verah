class AddHeroToHeroPowers < ActiveRecord::Migration[7.0]
  def change
    add_reference :hero_powers, :hero, null: false, foreign_key: true
  end
end
