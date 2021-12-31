import React from 'react';
import ReactDOM from 'react-dom';
import Conversation from './Conversation';

export default function Start() {

    const [character, setCharacter] = React.useState(
                                            {characterName: "",
                                            otherData: ""});

    function handleChange(event) { 

        const {name, value} = event.target; //destructure object into variables to be easier to read. best practice?

        setCharacter(prevState => {
            return {
                ...prevState, //use the spread operator to take previous state and then add to it
                [name]: value
            }
            
        });
    }   

    //form submit function. takes what state is and does something with it.
    function handleSubmit(event) {
        event.preventDefault(); //always do in react so form doesn't reload page

        //need to render a new component and pass the form data into it
        //form doesn't need hidden because i think render just replaces literally everything in #root. works for now lol

        ReactDOM.render(<Conversation character={character}/>, document.getElementById('root'));
    }

    return(
        <div className="start-input">
            <form onSubmit={handleSubmit} id="name-entry">
                <input type="text" 
                    placeholder="Character (not Player) Name" 
                    id="char-name" 
                    className="input-text"
                    name="characterName" 
                    onChange={handleChange}
                    value={character.characterName} 
                />
                <button className='btn'>Submit</button>
            </form>
        </div>
    )
}

