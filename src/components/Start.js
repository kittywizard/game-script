import React from 'react';
import Conversation from './Conversation';

export default function Start() {

    const [character, setCharacter] = React.useState('');

    function handleSubmit(event) { 
        setCharacter(event.target.value);
        console.log(character);
    }   

    return(
        <div className="start-input">
            <input type="text" placeholder="Character (not Player) Name" id="char-name" className="input-text" onChange={handleSubmit}/>
            {/* <button id="char-name-submit" className="btn" onClick={handleSubmit}>Submit</button> */}
            <Conversation character={character}/> {/*char getting passed in before the event fires*/ }
        </div>
    )
}

