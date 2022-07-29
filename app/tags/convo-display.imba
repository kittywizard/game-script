tag convo-display
	prop conversation = {}
	
	css .npc c:pink4 fw:700 m:0 p:0 d:inline

	css .displayCheckboxes d:flex fld: row


	css	.addons 
		d:flex fld:row jc:space-between 
		w:50% max-width:fit-content
		div
			p: 0.5em 1em

	<self>
		<section> 
			for convo in conversation	
				<p.npc> convo.speaker
				<span> convo.line
				<section.addons>
					<div.script>
						<span> "Script? "
						<span> if convo.script then "Yes" else "No"
					<div.action>
						<span> "Action? "
						<span> if convo.action then "Yes" else "No"
					<div.journal>
						<span> "Journal "
						<span> if convo.journal then "Yes" else "No"
						