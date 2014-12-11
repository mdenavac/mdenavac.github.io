MBP.hideUrlBarOnLoad()
MBP.scaleFix()
MBP.preventScrolling()
MBP.preventZoom()

book = 
	storiesList: null
	displayStory: (storyName)->
		console.log "displayStory #{storyName}"
		$('.story, .story-app, .story-app-mag').addClass('invisible')
		for i in Object.getOwnPropertyNames book.stories[storyName].show
			$( '#' + book.stories[storyName].show[i]).removeClass('invisible')
		if book.stories[storyName].set
			book.stories[storyName].set()

	stories: 
		splash:
			show: ['splash']
		login:
			show: ['login']
		a_la_une:
			show: ['app', 'mag', 'a_la_une']
		actualites:
			show: ['app', 'mag', 'actualites']
		focus:
			show: ['app', 'mag', 'focus']
		mes_articles:
			show: ['app', 'mag', 'mes_articles']
		sliding_menu:
			show: []
			set:()->
				$('#sliding_menu').toggleClass('invisible')
		texte_cgv:
			show: ['app','texte_cgv']
		texte_confi:
			show: ['app','texte_confi']
		res_recherche:
			show: ['app','res_recherche']
		article_ouvert:
			show: ['app','article_ouvert']
		ajouter_tuile:
			show: ['app','ajouter_tuile']
		mon_compte:
			show: ['app','mon_compte']

	storyTell: (div)->
		book.displayStory(div)

	storyAsk: (element)->
		book.storyTell 'splash' #$(element).context.id

	navigate:
		cursor: 0
		size: 0
		next: ->
			if @cursor + 1 >= @size
				@cursor = 0
			else
				@cursor += 1
			book.displayStory book.storiesList[@cursor]
		prev: ->
			if @cursor - 1 <= 0
				@cursor = @size - 1
			else
				@cursor -= 1
			book.displayStory book.storiesList[@cursor]

window.book = book

$(document).ready ->
	book.storiesList = `Object.getOwnPropertyNames(window.book.stories)`
	book.navigate.size = book.storiesList.length
	window.mySwipe = $('#slider')

	
	$(window.document).keypress (e)->
  		window.book.navigate.next() if e.charCode is 102
  		window.book.navigate.prev() if e.charCode is 101

	window.book.storyAsk()