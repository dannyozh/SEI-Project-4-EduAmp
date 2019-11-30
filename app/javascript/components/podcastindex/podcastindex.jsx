import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Button from '@material-ui/core/Button';
import { makeStyles } from '@material-ui/core/styles';
import Icon from '@material-ui/core/Icon';
import SaveIcon from '@material-ui/icons/Save';
import Box from '@material-ui/core/Box';
import ReactDOMServer from 'react-dom/server';

const csrfToken = document.querySelector('[name=csrf-token]').content
axios.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken

class Podcastindex extends React.Component {
    constructor() {
        super();
        console.log("in constructorssss");
        this.state = {
            podcasts: null,
            podcastID: window.location.pathname.split('/')[2]
        }
    }

    componentDidMount() {
        axios.get('/allpodcasts')
            .then(res => {
                const data = res.data;
                console.log("res.date", res.data);
                this.setState({ podcasts: data });
            })
            .catch(error => console.log(error))
    }


    render() {
        if (this.state.podcasts === null) {
            return false
        } else {
            const allPodcasts = this.state.podcasts.map((podcast, index) => {
                return (<div>
                    <ul>
                        <li key={podcast.id}></li>
                        <li>{podcast.podcast_title}</li>
                        <li><img src={podcast.podcast_photo} /></li>
                        <br />
                    </ul>
                </div>);
            });
            return (
                <div>
                    <Box>
                        <h1>Hi from podcast INDEX.jsx</h1>
                        {allPodcasts}
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
                        <Button onClick={() => { this.savePodcast() }}
                            variant="contained"
                            color="secondary"
                            size="small"
                            className="save-button"
                            startIcon={<SaveIcon />}
                        >
                            Save
                        </Button>
                    </Box>
                </div >
            );
        }
    }
}

export default Podcastindex;