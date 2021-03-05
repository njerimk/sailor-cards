import React, { Component } from 'react'

export default class Character extends Component {
    render() {
        return (
            <div className="col-sm-6">
                <div className="card">
                    <div className="card-body">
                        <h5 className="card-title">Special title treatment</h5>
                        < button href="#" className="btn btn-primary">Go somewhere</button>
                    </div>
                </div>
            </div>
        )
    }
}
