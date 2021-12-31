import React from "react";
import Line from "./Line";

export default function Conversation(props) {
    //save character's name in an easier variable
    const charName = props.character.characterName;
    const playerChar = "PC";
    let mapArray = [];
    let newArray = [];

    //set up state so we can grab the entry 
    const [entry, setEntry] = React.useState({
        name: charName,
        text: "",
        scriptCalled: false,
        actionHappens: false,
        switchActiveSpeaker: true,  //true = character, false = PC
    });

    //input entry function

    function handleEntryInput(e) {
        const {name, value, type, checked} = e.target;
        
        setEntry(prevState => ({
                ...prevState,
                [name]: type === "checked" ? checked : value
        }))
    }

    //form submit
    function handleEntry(e) {
        
        e.preventDefault();

        //display object?!
        mapArray.push(entry);
        console.log(mapArray)

       newArray =  mapArray.map(entry => {
            return <Line 
                    content={entry}
                />
        })
    }

    return (
        <div className="container">
            {newArray}
            <form onSubmit={handleEntry} className="flex-form">
                <label htmlFor="text">{charName}:</label>
                 {/* {entry.switchActiveSpeaker ? entry.name : playerChar} */}
                <input
                    type="text"
                    value={entry.text}
                    name="text"
                    onChange={handleEntryInput}
                    className="input-text"
                />

                <label htmlFor="actionHappens">Action Needed?</label>
                <input
                    type="checkbox"
                    name="actionHappens"
                    onChange={handleEntryInput}
                    checked={entry.actionHappens}
                />

                <label htmlFor="scriptCalled">Using a script here?</label>
                <input
                    type="checkbox"
                    name="scriptCalled"
                    onChange={handleEntryInput}
                    checked={entry.scriptCalled}
                />

                {/* <label htmlFor="switchActiveSpeaker">Adding more dialogue for {entry.switchActiveSpeaker ? entry.name : playerChar}?</label>
                <input
                    type="checkbox"
                    name="switchActiveSpeaker"
                    onChange={handleEntryInput}
                    checked={entry.switchActiveSpeaker}
                /> */}

                <button className="btn">+</button>
            </form>
          
        </div>
    )
}