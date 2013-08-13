function getCurrentWeek() {
	var today = new Date()
	var semesterStart = new Date('2013-08-05') // starting date of the semester (week 0)

	return Math.floor((today.getTime() - semesterStart.getTime()) / 1000 / 60 / 60 / 24 / 7)
}

Zepto(function ($) {

	$('.week').text(getCurrentWeek())
})