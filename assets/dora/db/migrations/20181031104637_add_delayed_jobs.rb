Sequel.migration do
  up do
    create_table :delayed_jobs do
      primary_key :id
      Integer :priority, :default => 0
      Integer :attempts, :default => 0
      String  :handler, :text => true
      String  :last_error, :text => true
      Time    :run_at
      Time    :locked_at
      Time    :failed_at
      String  :locked_by
      String  :queue
      Time    :created_at
      Time    :updated_at
      index   [:priority, :run_at]
    end
  end

  down do
    raise 'This is a forward-only migration'
  end
end
