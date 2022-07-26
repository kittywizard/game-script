tag input-block 
	prop speaker = "Default: "
	prop conversation = []
	prop dialogue = {
		speaker: 'NPC: '
		line: ''
		action: false
		script: false
		journal: false
	}
	prop displayButtons = false

	css .tree # rename this
		bd: none 
		p: 1em 2em
		bgc:warm3
		rd: 0.25em
		m: 0.25em
		ff:"Raleway", sans-serif
		cursor: pointer

	css div
		m: 1em
	
	css .checkboxes d:flex fld:row bgc:cooler4
	
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
		console.log conversation
		# reset
		dialogue = {
			speaker: ''
			line: ''
			action: false
			script: false
			journal: false

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
			<div.checkboxes>
				<div>
					<input type="checkbox" name="check-script" bind=dialogue.script> 
					<label htmlFor="check-script"> "Script Needed?"
				<div>
					<input type="checkbox" name="check-action" bind=dialogue.action>
					<label htmlFor="check-action"> "Action Needed?"
				<div>
					<input type="checkbox" name="check-journal" bind=dialogue.journal>
					<label htmlFor="check-journal"> "Update Journal?"

		# move this to its own tag
		<div> 
			for convo in conversation	
				<p.npc> convo.speaker
				<span> convo.line
				<div.script>
					<span> "Script? "
					<span> if convo.script then "Yes" else "No"
				<div.action>
					<span> "Action? "
					<span> if convo.action then "Yes" else "No"
				<div.journal>
					<span> "Journal "
					<span> if convo.journal then "Yes" else "No"
