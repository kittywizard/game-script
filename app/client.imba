import "./tags/header"
import "./tags/nav-link"
import "./tags/container"
import "./tags/input-block"
import "./tags/start-button"
import "./tags/convo-display"

global css html
	ff:"Raleway", sans
	body p: 0 m: 0
	$font: "Raleway", sans
	button
		bgc:cool6 bgc@hover:cool8 
		c:white
		cursor: pointer
	input 
		bgc:cool4
	input, button
		bd: none rd: 0.25em
		p: 1em 2em m: 0.25em
		ff: $font

tag app
	<self>
		<header-container>
		<main-container>


imba.mount <app>