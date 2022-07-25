tag input-block 
	prop speaker = "Default: "
	prop conversation = {}

	css .tree 
		bd: none 
		p: 1em 2em
		bgc:warm3
		rd: 0.25em
		m: 0.25em
		ff:"Raleway", sans-serif

	css div
		m: 1em

	def handleSubmit e
		
		console.log e.target
		
	<self>
		<form @submit.prevent=handleSubmit>
			<label> speaker
			<input.tree type="text" placeholder="...">
			<button.tree> "+"

		<div> conversation.speaker