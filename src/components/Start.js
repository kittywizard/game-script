export default function Start() {

    const charName = document.getElementById('char-name');

    function handleSubmit() {
        console.log(charName.value);

    }   

    return(
        <div className="start-input">
            <input type="text" placeholder="Character (not Player) Name" id="char-name" className="input-text"/>
            <button id="char-name-submit" className="btn" onClick={handleSubmit}>Submit</button>
        </div>
    )
}