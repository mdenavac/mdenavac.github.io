MBP.scaleFix()
MBP.hideUrlBarOnLoad()
MBP.preventScrolling()
MBP.preventZoom()

book = 
	stories: 
		splash: ()->
			nom = 'splash'
			console.log( 'storyStart ' + nom )
			$('.story').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		login: ()->
			nom = 'login'
			console.log( 'storyStart ' + nom )
			$('.story').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		sliding_menu: ()->
			nom = 'sliding_menu'
			console.log( 'storyStart ' + nom )
			$('.story').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		app: ()->
			nom = 'app'
			console.log( 'storyStart ' + nom )
			$('.story').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		mag: ()->
			this.app()
			nom = 'mag'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		a_la_une: ()->
			this.mag()
			nom = 'a_la_une'
			console.log( 'storyStart ' + nom )
			$('.story-app-mag').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		actualites: ()->
			this.mag()
			nom = 'actualites'
			console.log( 'storyStart ' + nom )
			$('.story-app-mag').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		focus: ()->
			this.mag()
			nom = 'focus'
			console.log( 'storyStart ' + nom )
			$('.story-app-mag').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		mes_articles: ()->
			this.mag()
			nom = 'mes_articles'
			console.log( 'storyStart ' + nom )
			$('.story-app-mag').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		texte_cgv: ()->
			this.app()
			nom = 'texte_cgv'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		texte_confi: ()->
			this.app()
			nom = 'texte_confi'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		res_recherche: ()->
			this.app()
			nom = 'res_recherche'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		ajouter_tuile: ()->
			this.app()
			nom = 'ajouter_tuile'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		mon_compte: ()->
			this.app()
			nom = 'mon_compte'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')
		article_ouvert: ()->
			this.app()
			nom = 'article_ouvert'
			console.log( 'storyStart ' + nom )
			$('.story-app').addClass('invisible')
			$('#' + nom).removeClass('invisible')

	storyStart: (div)->
		this.stories[div]()

	storyTell: (element)->
		this.storyStart 'splash' #$(element).context.id

window.book = book

window.book.storyTell()