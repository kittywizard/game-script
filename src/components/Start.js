import React from 'react';
import Conversation from './Conversation';

export default function Start() {

    const charNameInput = document.getElementById('char-name');
    let charName = '';
    const [character, setCharacter] = React.useState('');

    function handleSubmit() {
        
        charName = charNameInput.value;
        setCharacter(charName);

        //document.querySelector('.start-input').style.display = "none";
    }   

    return(
        <div className="start-input">
            <input type="text" placeholder="Character (not Player) Name" id="char-name" className="input-text"/>
            <button id="char-name-submit" className="btn" onClick={handleSubmit}>Submit</button>
            <Conversation character={character}/> {/*char getting passed in before the event fires*/ }
        </div>
    )
}

