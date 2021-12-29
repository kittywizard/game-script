export default function Conversation(props) {
    console.log(props)
    return (
        <div className="container">
            <h1>{props.character.characterName}</h1> 
        </div>
    )
}