import React from 'react';
import Conversation from './Conversation';

export default function Start() {

    const [character, setCharacter] = React.useState(
                                            {"characterName": "",
                                            "otherData": ""});

    function handleSubmit(event) { 
        setCharacter(prevState => {
            return {
                ...prevState, //use the spread operator to take previous state and then add to it
                [event.target.name]: event.target.value
            }
            
        });
    }   

    return(
        <div className="start-input">
            <input type="text" 
                placeholder="Character (not Player) Name" 
                id="char-name" 
                className="input-text"
                name="characterName" 
                onChange={handleSubmit}
            />

            {/* <button id="char-name-submit" className="btn" onClick={handleSubmit}>Submit</button> */}
            {/* <Conversation character={character}/> {/*char getting passed in before the event fires*/ }
        </div>
    )
}

