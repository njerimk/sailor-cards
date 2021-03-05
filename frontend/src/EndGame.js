import React from 'react'
import Win from './Win'
import Lose from './Lose'

function EndGame(props) {
    return (
        <div>

            <Win 
            matched={props.matched}
            gameInSession={props.gameInSession}
            />
            <Lose 
            matched={props.matched}
            gameInSession={props.gameInSession}  
            />
        </div>
    )
}

export default EndGame
