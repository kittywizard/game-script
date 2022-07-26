tag input-block 
	prop speaker = "Default: "
	prop conversation = []
	prop dialogue = {
		speaker: 'NPC: '
		line: ''
		action: false
		script: false
	}
	prop displayButtons = false

	css .tree 
		bd: none 
		p: 1em 2em
		bgc:warm3
		rd: 0.25em
		m: 0.25em
		ff:"Raleway", sans-serif
		cursor: pointer

	css div
		m: 1em
	
	css .btn-container 
			button 
				bd:none 
				c:warm2 ff:"Raleway", sans-serif
				bgc:cool6 bgc@hover:cool8 
				p:1em 2em 
				rd:0.25em
				cursor: pointer	

	css .npc c:pink4 fw:700 m:0 p:0 d:inline
		.pc c:pink9 fw: 700
		

	def handleSpeaker char
		if char	
			dialogue.speaker = "NPC: "
		else
			dialogue.speaker = "PC: "

	def handleSubmit e
		if !displayButtons then displayButtons = true

		dialogue.line = e.target[0].value
		conversation.push(dialogue)
		dialogue = {
			speaker: ''
			line: ''
			action: false
			script: false
		}
		
	<self>
		if displayButtons
			<div.btn-container>
				<p> "Who's talking?"
				<button.tree @click=handleSpeaker(true)> "NPC"
				<button.tree @click=handleSpeaker(false)> "PC"

		<form @submit.prevent=handleSubmit>
			<label> dialogue.speaker
			<input.tree type="text" required placeholder="..." bind=dialogue.line>
			<button.tree type="submit"> "+"

		<div> 
			for convo in conversation	
				<p.npc> convo.speaker
				<span> convo.line
				<span> "Script?"
				<p> if convo.script then "Yes" else "No"
				<br/>