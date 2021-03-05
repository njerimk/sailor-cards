import React from 'react'


export default function Timer(props) {
    
        const { minutes, seconds} = props
        return (
            <div className="timer">
                <h1>Time Remaining:</h1>
                <h1 className="timer-head">
                    {minutes} : {seconds < 10 ? `0${seconds}` : seconds}</h1>
            </div>
        )
    }

