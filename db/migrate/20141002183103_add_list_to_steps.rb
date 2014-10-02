class AddListToSteps < ActiveRecord::Migration
  def change
    add_reference :steps, :list, index: true
  end
end
