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
class Podcast extends React.Component {
    constructor() {
        super();
        console.log("in constructor");
        this.state = {
            podcasts: null,
            podcastID: window.location.pathname.split('/')[2]
        }
    }

    componentDidMount() {
        console.log(window.location.pathname.split('/')[2])
        let id = window.location.pathname.split('/')[2];
        axios.get(`/something/${id}`)
            .then(res => {
                const data = res.data;
                console.log("res.date", res.data);
                this.setState({ podcasts: data });

            })
            .catch(error => console.log(error))
    }


    savePodcast() {
        console.log('savingg')
        axios.post('/listen_again', {
            id: this.state.podcastID
        })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
    }


    render() {
        if (this.state.podcasts === null) {
            return false
        } else {
            return (
                <div>
                    <Box>
                        <h1>Hi from podcast.jsx</h1>
                        <img src={this.state.podcasts.podcast_photo} />
                        <p>Title: {this.state.podcasts.podcast_title}</p>
                        <p>Date: {this.state.podcasts.date}</p>
                        <p>Episode No: {this.state.podcasts.episode_no}</p>
                        <p>Episode Name: {this.state.podcasts.episode_name}</p>
                        <p>Description: {this.state.podcasts.description}</p>
                        <p>Duration: {this.state.podcasts.actual_length}</p>
                        <audio controls preload="auto" ref="audio">
                            <source className="main-audio" src={this.state.podcasts.url} type="audio/mpeg">
                            </source>;
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

export default Podcast;