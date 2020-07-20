INSERT_RANDOM_RECORDS_QUERY = <<-SQL
  insert into images (
      file, created_at, updated_at
  )
  select
      random()::text::jsonb,
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP
  from generate_series(1, %{amount}) s(i)
SQL

ActiveRecord::Base.connection.execute(INSERT_RANDOM_RECORDS_QUERY % { amount: 1000 })
p "#{Image.count} records total"
