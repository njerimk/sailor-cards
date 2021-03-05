import React from 'react'
import Card from './Card'
export function CardDeck(props) {
   
    return (
        <div> 
            <div className="card-deck">
                {props.cardData.map(
                    card => <Card cardData={card} 
                    clickAction={props.onCardClick}
                    checkCards={props.checkCards}
                    matched={props.matched}
                    key={card.id}
                    />
                )}     
            </div>
          
        </div>
    )
}

export default CardDeck;

