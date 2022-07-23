tag conversation-block 
	prop showConvoBtn = true
	
	def handleClick
		console.log "adding new convo"
		# need to hide this button after
		showConvoBtn = !showConvoBtn
		console.log showConvoBtn

	css div p:0.5em
		button 
			bd:none 
			c:warm2 ff:"Raleway", sans-serif
			bgc:cool6 bgc@hover:cool8 
			p:1em 2em 
			rd:0.25em
			cursor: pointer	
	<self>
		<div>
			<button @click=handleClick> "+ New Conversation"
