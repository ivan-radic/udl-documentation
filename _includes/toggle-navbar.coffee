hasClass = (ele, selector) ->
	classList = (' ' + ele.className + ' ').replace(/[\n\t\r]/g, " ")
	if ele.nodeType is 1 and classList.indexOf(' ' + selector + ' ') > 1
		return true
	return false

toggleClass = (ele, className) ->
	if hasClass(ele, className)
		regex = new RegExp('(?:^|\\s)'+ className + '(?:\\s|$)')
		ele.className = ele.className.replace(regex, '')
	else
		ele.className += ' ' + className
	return null

toggleNavbar = () ->
	toggleClass(document.getElementById('navbar-toggle-menu'), 'show')

# expand navbar when click the navbar
document.getElementById('navbar-toggle-action').onclick = toggleNavbar
