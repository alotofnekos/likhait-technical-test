class MakePayerNameNullable < ActiveRecord::Migration[7.2]
  def change
    if column_exists?(:expenses, :payer_name)
      change_column_null :expenses, :payer_name, true
    end
  end
end
