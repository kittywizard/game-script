tag main-container

	prop conversation = {
		speaker: "NPC"
		line: "Hello world"
	}
	prop showConvoBtn = true

	<self>
		<main>
			if showConvoBtn then <conversation-block bind:showConvoBtn=showConvoBtn> 
				
			else 
				<input-block speaker="NPC: " bind:conversation=conversation>