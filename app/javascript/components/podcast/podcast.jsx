import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Button from '@material-ui/core/Button';
import { makeStyles } from '@material-ui/core/styles';
import Icon from '@material-ui/core/Icon';
import SaveIcon from '@material-ui/icons/Save';

class Podcast extends React.Component {
    constructor() {
        super();
        this.state = {
            podcasts: [],
            isPlaying: null,
            podcastID: window.location.pathname.split('/')[2]
        }
    }

    componentDidMount() {
        console.log(window.location.pathname.split('/')[2])
        axios.get('/something/1')
            .then(res => {
                const data = res.data;
                this.setState({ podcasts: data });
                console.log("this.state podcasts", this.state.podcasts);
            })
            .catch(error => console.log(error))
    }

    playaudio() {
        location.reload(true);
    }

    onTrackChange(source) {
        this.setState({ isPlaying: source }, function () {
            this.refs.audio.pause();
            this.refs.audio.load();
            this.refs.audio.play();
        })
    }

    render() {
        return (
            <div>
                <h1>Hi from podcast.jsx</h1>
                <p>Name: {this.state.podcasts.name}</p>
                <p>Description: {this.state.podcasts.description}</p>
                <p>Duration: {this.state.podcasts.duration}</p>
                <p>HIII:{this.state.podcasts.url}</p>
                <audio controls preload="auto" ref="audio">
                    <source className="main-audio" src={this.state.isPlaying} type="audio/mpeg">
                    </source>
                </audio>
                <hr />
                <Button
                    variant="contained"
                    color="primary"
                    size="small"
                    className="button"
                    id={this.state.podcastID}
                    startIcon={<SaveIcon />}
                >
                    Subscribe
                </Button>
                <Button
                    variant="contained"
                    color="secondary"
                    size="small"
                    className="save-button"
                    startIcon={<SaveIcon />}
                >
                    Save
                </Button>
            </div >
        );
    }


}

export default Podcast;