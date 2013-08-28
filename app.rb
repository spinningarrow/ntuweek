require 'sinatra'
require 'numbers_and_words'

get '/' do
	# Get today's date
	today = Time.now.utc + Time.zone_offset('SGT')
	todayString = today.strftime("%A, %e %B %Y").downcase

	# Setup
	startDate = Time.new(2013, 8, 5).utc + Time.zone_offset('SGT')
	week = (today.to_i - startDate.to_i) / 60 / 60 / 24 / 7

	if week == 8 then
		isRecessWeek = true
	elsif week > 8 then # Recess week isn't counted
		week = week - 1
	end

	# Generate view
	erb :index, :locals => { :today => todayString, :week => week.to_words, :isRecessWeek => isRecessWeek }
end