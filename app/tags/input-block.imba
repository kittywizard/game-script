tag input-block 
	prop speaker = "Choose a speaker "
	prop conversation = []
	prop dialogue = {
		speaker: 'NPC: '
		line: ''
		action: false
		script: false
		journal: false
	}
	prop displayButtons = false
	prop displayOptions = false

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
	css .checkboxes d:flex fld:row bgc:cool2 shadow:md

	def handleSpeaker char
		if char	
			dialogue.speaker = "NPC: "
		else
			dialogue.speaker = "PC: "

	def handleSubmit e
		if !displayButtons then displayButtons = true

		dialogue.line = e.target[0].value 
		conversation.push(dialogue)
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
				<button @click=handleSpeaker(true)> "NPC"
				<button @click=handleSpeaker(false)> "PC"

		<form @submit.prevent=handleSubmit>
			<label> dialogue.speaker
			<input type="text" required placeholder="..." bind=dialogue.line>
			<button type="submit"> "+"

			<div.checkboxes>
				<div @click=(displayOptions = !displayOptions)> ">> Display Options"
				if displayOptions
					<div>
						<input type="checkbox" name="check-script" bind=dialogue.script> 
						<label htmlFor="check-script"> "Script Needed?"

					<div>
						<input type="checkbox" name="check-action" bind=dialogue.action> 
						<label htmlFor="check-action"> "Action Needed?"

						if dialogue.action
							<div> "Select Action"
								<input.tree type="text" placeholder="describe action"> 
					<div>
						<input type="checkbox" name="check-journal" bind=dialogue.journal>
						<label htmlFor="check-journal"> "Update Journal?"
						
						if dialogue.journal
							<div> "Which journal entry?"
								<input type="text">


