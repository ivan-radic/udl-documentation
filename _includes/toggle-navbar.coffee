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
	# close the navbar menu no matter its status
	removeClass(navbarMenuEle, 'show')
	if resizedWidth < breakPoint
		# expand navbar when click the navbar
		navbarEle.addEventListener('click', toggleNavbar)
		# set the cursor to pointer because it has action
		navbarEle.style.cursor = 'pointer'
	else
		navbarEle.removeEventListener('click', toggleNavbar)
		# set the cursor to default because it has no action anymore
		navbarEle.style.cursor = 'default'
	return null

window.addEventListener 'resize', debounce(handleResize, 250)
handleResize() # do it once when page load
