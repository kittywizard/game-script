import "./tags/header"
import "./tags/nav-link"
import "./tags/container"
import "./tags/input-block"
import "./tags/convo-block"

global css html
	ff:"Raleway", sans
	body p: 0 m: 0
	$font: "Raleway", sans

tag app
	<self>
		<header-container>
		<main-container>


imba.mount <app>