import React, { Component } from 'react'
import CardDeck from './CardDeck'
import Timer from './Timer'
// import ScoreCard from './ScoreCard'
import EndGame from './EndGame'

export class Game extends Component {
    constructor(){
        super();
            this.state = {
                cards: [],
                checkCards: [],
                matched: [],
                minutes: 0,
                seconds: 59,
                gameInSession: true,
                games: []
            }
    }

    
    
    componentDidMount() {
        const cardsUrl ="http://localhost:3000/cards"
        const gamesUrl = "http://localhost:3000/games/"
        const charactersUrl = "http://localhost:3000/characters/"

            
        fetch(cardsUrl)
        .then((response) => response.json())
        .then((cards) =>this.setState({cards}))

        fetch(gamesUrl)
        .then(response => response.json())
        .then((games => console.log(games)))
        //need to do a post request for a new game in endgame
        //I'll also do a component did mount in end game and begin iterating 
        //that way on the scorecard I can show the new game with the already saved games
        //if I have time let's try to render our functions in game for the score card
        // if checkCard[0] == checkCard[1] add another caveat of a bad move vs a good move
        //then we will try to translate this into our post request for our endgame to pass onto our scorecard

        //EndGame < Win && Lose && ScoreCard 
        //EndGame will 

        fetch(charactersUrl)
        .then(response => response.json())
        .then((characters => console.log(characters)))

        this.gameTimer()
    }

    onCardClick = (card) => {

        if(this.state.checkCards.length < 2 && !this.state.checkCards.includes(card) ){
            this.setState({checkCards: [...this.state.checkCards, card]}
                )
        }if(this.state.checkCards.length === 2){ 
            if(this.state.checkCards[0].pair_name === this.state.checkCards[1].pair_name){
                //let this state of 2 cards.push into matched cards array.push
                let cardPair1 = this.state.checkCards[0]
                let cardPair2 = this.state.checkCards[1]

                

                this.setState({matched: [...this.state.matched, cardPair1, cardPair2]})
                    // this.setState({gameInSession: false})
                     // let filterCards = this.state.cards.filter((card)=> !this.state.checkCards.includes(card))
                // this.setState({cards: filterCards})

                //send Patch Request 
                this.setState({checkCards: []})
                console.log("you made a pair")
            }  
            else{console.log("no pair")
            this.setState({checkCards: []})
        }

    }if(this.state.matched.length === 14 || null){
            this.setState({gameInSession: false})
            return <EndGame />
        }
    }

   

    gameTimer =()=>{

        this.myInterval = setInterval(() => {
            const {seconds, minutes } = this.state

            if(seconds > 0) {
            
            this.setState(({ seconds}) => ({
                seconds: seconds - 1
            }))
        }
        
        
        if (seconds === 0 ){
            if(minutes === 0) {
                
                clearInterval(this.myInterval)
                this.setState({gameInSession: false})
            } else{
                this.setState(({ minutes}) => ({
                    minutes: minutes - 1,
                    seconds: 59
                }))
            }
        }
        }, 1000)
    }
    
    // newGameScore=()=>{


        

    //     // fetch("http://localhost:3000/games/", {
    //     //     method: 'POST',
    //     //     headers: {
    //     //       'Accept': 'application/json',
    //     //       'Content-Type': 'application/json',
    //     //     },
    //     //     body: JSON.stringify({
    //     //       firstParam: 'yourValue',
    //     //       secondParam: 'yourOtherValue',
    //     //     })
    //     //   })
    //     }
    

    

  

    
          
        
        //card is clicked, when click happens     
        //set flipped state to true
        // when the flipped state is set to true, render frontImg on that card
    


   

    render() {
        

        return (
               
            <div>
                    
                <Timer 
                minutes={this.state.minutes} 
                seconds={this.state.seconds}
                gameTimer={this.gameTimer}
                gameOver={this.gameOver}

                /><EndGame 
                gameInSession={this.state.gameInSession}
                matched={this.state.matched}

                />
                {/* <ScoreCard /> */}
            
                <CardDeck 
                cardData={this.state.cards}
                onCardClick={this.onCardClick}
                checkCards={this.state.checkCards}
                matched={this.state.matched}
                />
        
            
            </div>
        )
    }
    }

export default Game