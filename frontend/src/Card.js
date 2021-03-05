import React, {Component} from "react";
//class base component
export default class Card extends Component {
  constructor(){
    super();
        this.state = {
            isFlipped: false,

        }
      }
 
  showCard=(card)=>{
    this.setState({isFlipped: !this.state.isFlipped}) 
    this.props.clickAction(card);


    // let id = card.id
    // console.log(card.flipped)

    // let newFlipped = !card.flipped
    // console.log(newFlipped)
    // fetch("http://localhost:3000/cards/"+ id, {
    //   method: "PATCH",  
    //   body: JSON.stringify({
    //     flipped: newFlipped
    //   }),
    //   headers: {
    //     "Content-type": "application/json"  
    //   }
    //   })
    //   .then(response => response.json())    
    //   .then(data => console.log(data))
    //  add cardStaysFlipped
  }

  
  

  render(){   
    const {cardData, matched, checkCards}=this.props
    const {isFlipped} = this.state
  return (
    <div className="card" 
    key={cardData.id} 
    onClick={()=> matched.includes(cardData) ? null 
      : this.showCard(cardData)}

    >
      
      <div className="card-body">
        {(isFlipped && checkCards.includes(cardData)) || matched.includes(cardData)
        ? <img src={cardData.frontImg} 
        id="card-img-front"
        className="card-img-top" 
        alt={cardData.pair_name}
        value={cardData.id} 
        />
        :
        <img src={cardData.backImg} 
        className="card-img-top" 
        alt={cardData.pair_name} 
        value={cardData.id} 

        /> 
       
        }   
        {/* <h5 className="card-title">{cardData.pair_name}</h5> */}
      </div>
    </div>
      )
    }
  }

