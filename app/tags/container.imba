tag main-container

	prop conversation = []
	prop showConvoBtn = true

	<self>
		<main>
			if showConvoBtn then <conversation-block bind:showConvoBtn=showConvoBtn> 
				
			else 
				<input-block bind:conversation=conversation>