import React from 'react'
import Img from './images/sailor_senshi.jpg'



function Home(props) {
    return (
    <div>
      <main role="main" className="inner cover">
        <h1 className="cover-heading">SAILOR SENSHI MATCH</h1>
        <img src={Img} alt="sailor-senshi"></img>
        <a href="/game">
            <button type="button" className="start-button">
              Start A New Game
            </button>
        </a>
        <p className="lead">
            Site Created by Njeri Kamau
        </p>
      </main>

      <footer className="mastfoot mt-auto">
        <div className="inner">
        </div>
        </footer>      
    </div>
    )
}



export default Home

