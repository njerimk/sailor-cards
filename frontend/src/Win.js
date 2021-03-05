import React, { Component } from 'react'

export default class Win extends Component {


    render() {
        return (
            <div id="popup2" class="overlay">
                {this.props.gameInSession === false && this.props.matched.length === 14 ? 

                <div className="popup">                
                    <a class="close" href="http://localhost:3001/game">&times;</a>
                    <img id="you-win" alt="win" src="https://lh3.googleusercontent.com/proxy/FJ-dSbjEN8A4U_L7xtqja5eM8o1D9iipRZ6Ko5RRq6WedurJbIjIfH3X-liL2xiG3kcokhlAFNzlrh3Ks6TQI_1vByh_SAge"></img>
                

            </div>: null}
        </div>

        )
    }
}
