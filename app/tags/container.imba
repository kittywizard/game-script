tag main-container

	prop conversation = []
	prop showConvoBtn = true

	css main
		m: 1em


	<self>
		<main>
			if showConvoBtn  
				<start-button bind:showConvoBtn=showConvoBtn>
			else 
				<convo-display conversation=conversation>
				<input-block bind:conversation=conversation>

