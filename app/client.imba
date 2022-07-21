import "./tags/header"
import "./tags/nav-link"
import "./tags/container"

global css html
	ff:"Raleway", sans
	body p: 0 m: 0

tag app
	<self>
		<header-container>
		<main-container>


imba.mount <app>