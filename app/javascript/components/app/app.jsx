import React from 'react';
import Podcast from '../podcast/podcast'


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
                <Podcast />
            </div>
        );
    }


}

export default App;
