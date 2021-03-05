import React from "react";
export default class Modal extends React.Component {
    state = {
        show:true
      };
      exitModal = e => {
        this.setState({
          show: false
        });
      };
  
    render() {
        if(!this.props.show){
            return null;
        }
    return <div>
            <Modal show={this.state.show} />
            <div>Hello Modal</div>;
            <button onClick={e => 
                    {this.exitModal();}}
            > exit Modal </button>
            </div>
  }
}