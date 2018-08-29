navbarEle = document.getElementById('navbar-toggle-action')
navbarMenuEle = document.getElementById('navbar-toggle-menu')

hasClass = (ele, selector) ->
	classList = (' ' + ele.className + ' ').replace(/[\n\t\r]/g, " ")
	if ele.nodeType is 1 and classList.indexOf(' ' + selector + ' ') > 1
		return true
	return false

removeClass = (ele, className) ->
	regex = new RegExp('(?:^|\\s)'+ className + '(?:\\s|$)')
	ele.className = ele.className.replace(regex, '')

toggleClass = (ele, className) ->
	if hasClass(ele, className)
		regex = new RegExp('(?:^|\\s)'+ className + '(?:\\s|$)')
		ele.className = ele.className.replace(regex, '')
	else
		ele.className += ' ' + className
	return null

toggleNavbar = () ->
	toggleClass(navbarMenuEle, 'show')

# debounce function calls based on Remy Sharp's post
# https://remysharp.com/2010/07/21/throttling-function-calls
debounce = (fn, delay) ->
	timer = null
	return ->
		context = this
		args = arguments
		clearTimeout(timer)
		timer = setTimeout(->
			fn.apply(context, args)
		, delay)
		return null

handleResize = (event) ->
	breakPoint = 992 # Bootstrap large devices (desktops, 992px and up)
	resizedWidth = window.innerWidth
	if resizedWidth < breakPoint
		console.log "< 992 w: #{resizedWidth}"
		# expand navbar when click the navbar
		navbarEle.addEventListener('click', toggleNavbar)
	else
		console.log ">=992 w: #{resizedWidth}"
		navbarEle.removeEventListener('click', toggleNavbar)
	return null

window.addEventListener 'resize', debounce(handleResize, 250)
handleResize() # do it once when page load
