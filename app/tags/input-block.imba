tag input-block 
	prop speaker = "Default: "
	prop conversation = []
	prop dialogue = {
		speaker: ''
		line: ''
	}

	css .tree 
		bd: none 
		p: 1em 2em
		bgc:warm3
		rd: 0.25em
		m: 0.25em
		ff:"Raleway", sans-serif

	css div
		m: 1em

	css .speaker c:pink4 fw:700 m:0 p:0 d:inline
		

	def handleSubmit e
		
		console.log e.target[0].value
		
	<self>
		<form @submit.prevent=handleSubmit>
			<label> speaker
			<input.tree type="text" placeholder="..." bind=dialogue.line>
			<button.tree type="submit"> "+"

		<div> 
			<p.speaker> conversation.speaker
			<span> conversation.line