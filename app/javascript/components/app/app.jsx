import React from 'react';


class App extends React.Component {
    constructor() {
        super();
        this.state = {
            playing: true
        }
    }

    render() {


        return (
            <div>
                <h1>Hi from app.jsx</h1>
            </div>
        );
    }


}

export default App;
