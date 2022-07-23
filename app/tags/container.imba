tag main-container

	prop conversation = {}
	prop showConvoBtn = true

	<self>
		<main>
			if showConvoBtn
				<conversation-block showConvoBtn=showConvoBtn> 
			# <input-block speaker="NPC: ">