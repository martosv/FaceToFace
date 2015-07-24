class BaseEmployee 
	attr_accessor :name, :notification, :base_salary
	def initialize name, notification, base_salary 
		@name = name
		@notification = notification
		@base_salary = base_salary
	end

	def calculate_payroll
		@base_salary.to_i	
	end
end

class HourEmployee 
	attr_accessor :name, :notification, :hours, :hour_rate
	def initialize name, notification, hours, hour_rate
		@name = name
		@notification = notification
		@hours = hours
		@hour_rate = hour_rate
	end

	def calculate_payroll
		@hours.to_i * @hour_rate.to_i
	end
end

class BasePlusHourEmployee < BaseEmployee
	attr_accessor :hours, :hour_rate
	def initialize name, notification, base_salary, hours, hour_rate
		super name, notification, base_salary
		@hours = hours
		@hour_rate = hour_rate
	end

	def calculate_payroll
		super + @hours.to_i * @hour_rate.to_i
	end
end


class PayrollCalculator 
	def initialize employees
		@employees = employees
	end

	def calculate_employees_payroll
		@employees.each do |employee|
			employee_information = employee.split
			employee_object = create_employee_object employee_information
			notification = notifications_via employee_object
			payroll = get_payroll_of_an_employee employee_object

			show_payroll payroll
		end
	end

	def create_employee_object employee_information

		type_of_employee = employee_information.shift
		case type_of_employee

			when "Base"
				name = employee_information.shift
				notification = employee_information.shift
				base_salary = employee_information.shift
				return BaseEmployee.new name, notification, base_salary

			when "Hour"
				name = employee_information.shift
				notification = employee_information.shift
				hours = employee_information.shift
				hour_rate = employee_information.shift
				return HourEmployee.new name, notification, hours, hour_rate

			when "BasePlusHour"	
				name = employee_information.shift
				notification = employee_information.shift
				base_salary = employee_information.shift
				hours = employee_information.shift
				hour_rate = employee_information.shift
				return BasePlusHourEmployee.new name, notification, base_salary, hours, hour_rate			
		end
	end

	def get_payroll_of_an_employee employee
		"#{employee.name} -> #{employee.calculate_payroll}, " + notifications_via(employee)
	end

	def show_payroll payroll
		puts payroll
	end

	def notifications_via employee
		notification = employee.notification

		case notification
			when /\A@([\w]+)\z/
				"Payroll notification send to #{employee.name} via twitter."
			when /\A[a-z0-9._-]{1,}+@[a-z0-9.-]+\.[a-z]{2,4}\z/
				"Payroll notification send to #{employee.name} via email."
			when /[0-9]/
				"Payroll notification send to #{employee.name} via sms."	
		end	
	end
end


class EmployeesFile
	def initialize file
		@file = file	
	end

	def read_file 
		IO.read @file
	end
	def get_employees_data
		read_file.split("\n")
	end
end


employees_source = EmployeesFile.new("employee_information.txt").get_employees_data

PayrollCalculator.new( employees_source ).calculate_employees_payroll