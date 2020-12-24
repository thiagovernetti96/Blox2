class CreateAgendas < ActiveRecord::Migration[6.0]
  def change
    create_table :agendas do |t|

      t.timestamps
    end
  end
end
