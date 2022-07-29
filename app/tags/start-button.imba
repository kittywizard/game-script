tag start-button 
	prop showConvoBtn = true
	
	def handleClick
		showConvoBtn = !showConvoBtn

	css div p:0.5em
		
	<self>
		<div>
			<button @click=handleClick> "+ New Conversation"
