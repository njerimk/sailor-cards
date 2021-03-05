import React, { Component } from 'react'

export default class Lose extends Component {
    render() {
        return (
        <div id="popup1" class="overlay">
            {(this.props.gameInSession === false && this.props.matched.length < 14) || null? 
                <div className="popup">
                    <img id="game-over" alt="lose" src="https://lh3.googleusercontent.com/proxy/kn69iPJsNOa8eCyIcUukVU8t5W0fIZXklVKSMBTIsasHkZxBFbuBW7I1ypE_HLg_DmdepnoA3zHwaaRl7K_g0Ok4cHYOuVoA"></img> 
                            <a class="close" href="http://localhost:3001/game">&times;</a>


		
	        </div>  :null}

</div>
          
        )
    }
}
