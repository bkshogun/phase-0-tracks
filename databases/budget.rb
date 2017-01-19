require 'sqlite3'

$DATABASE = SQLite3::Database.new("budget.db")

create_income_table = <<-SQL
  CREATE TABLE IF NOT EXISTS income(
    id INTEGER PRIMARY KEY,
    job VARCHAR(255),
    date VARCHAR(255),
    amount INT
  )
SQL

create_expenses_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS expenses(
    id INTEGER PRIMARY KEY,
    expense VARCHAR(255),
    date VARCHAR(255),
    amount INT
  )
SQL

$DATABASE.execute(create_income_table)
$DATABASE.execute(create_expenses_table)

def add_income
	puts "Enter the job: "
  job = gets.chomp
  puts "Enter the date (dd/mm/yyyy): "
  date = gets.chomp
  puts "Enter the amount: "
  amount = gets.chomp
	$DATABASE.execute("INSERT INTO income (job, date, amount) VALUES (?, ?, ?)", [job, date, amount])
end 

def modify_income
	puts "Enter the ID number  of the transaction to modify: "
	id = gets.chomp 
	p $DATABASE.execute("SELECT * FROM income WHERE id=#{id}")
	puts "Enter the event to modify (job, date, amount): "
	old_heading = gets.chomp
	puts "Enter amended data: "
	new_data = gets.chomp 
	$DATABASE.execute("UPDATE income SET #{old_heading} = '#{new_data}' WHERE id = #{id}")
end 

def delete_income
	puts "Enter the ID number of the transaction to delete: "
	id = gets.chomp
	$DATABASE.execute("DELETE FROM income WHERE id = #{id}")
end 

def add_expense
	puts "Enter the expense: "
	expense = gets.chomp
	puts "Enter the date (dd/mm/yyyy): "
	date = gets.chomp
	puts "Enter the amount: "
	amount = gets.chomp
	$DATABASE.execute("INSERT INTO expenses (expense, date, amount) VALUES (?, ?, ?)", [expense, date, amount])
end 

def modify_expense
	puts "Enter the ID number of the transaction to modify: "
	id = gets.chomp 
	p $DATABASE.execute("SELECT * FROM expenses WHERE id=#{id}")
	puts "Enter the event to modify (expense, date, amount): "
	old_heading = gets.chomp
	puts "Enter amended data: "
	new_data = gets.chomp 
	$DATABASE.execute("UPDATE expenses SET #{old_heading} = '#{new_data}' WHERE id = #{id}")
end 

def delete_expense
	p $DATABASE.execute("SELECT * FROM expenses")
	puts "Enter the ID number of the transaction to delete: "
	id = gets.chomp
	$DATABASE.execute("DELETE FROM expenses WHERE id = #{id}")
end 

def display_income
	$DATABASE.execute("SELECT * FROM income").each do |n|
		puts "ID => #{n[0]}		Job => #{n[1]}		Date => #{n[2]}		Amount => #{n[3]}"
	end 
end

def display_expenses
	$DATABASE.execute("SELECT * FROM expenses").each do |n|
	  puts "ID => #{n[0]}		Job => #{n[1]}		Date => #{n[2]}		Amount => #{n[3]}"
	end
end 

def drop_table(table)
  $DATABASE.execute("drop table #{table}")
end

## DRIVER CODE ##

done = false 
until done == true do 

puts "Access (I)ncome or (E)xpenses, or (X) to exit"
main_menu = gets.chomp.downcase
if main_menu == "i"
	puts "Would you like to (A)dd, (M)odify, (R)emove or (D)isplay income?"
    income_menu = gets.chomp.downcase
    if income_menu == "a"
      add_income
      display_income
    elsif income_menu == "m"
    	display_income
    	modify_income
    	display_income
    elsif income_menu == "r"
    	display_income
      delete_income
      display_income
    elsif income_menu == "d"
			display_income	
    end 
elsif main_menu == "e"
  puts "Would you like to (A)dd, (M)odify, (R)emove or (D)isplay an expense?"
  expense_menu = gets.chomp.downcase
  	if expense_menu == "a"
  	  add_expense
  	  display_expenses
  	elsif expense_menu == "m"
  		display_expenses
  	  modify_expense
  	  display_expenses
  	elsif expense_menu == "r"
  		display_expenses
  	  delete_expense
  	  display_expenses
  	elsif expense_menu == "d"
  	  display_expenses
  	end
  elsif main_menu == "x"
  	done = true
  end 
end 