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
            podcastID: window.location.pathname.split('/')[2],
            author: null,
            authorid: null
        }
    }

    componentDidMount() {
        // console.log(window.location.pathname.split('/')[2])
        let id = window.location.pathname.split('/')[2];
        Promise.all([
            axios.get(`/something/${id}`),
            axios.get(`/podcastauthor/${id}`)
        ]).then(([result1, result2]) => {
            // console.log(result1.data)
            // console.log(result2.data[0].id)
            this.setState({ podcasts: result1.data });
            this.setState({ author: result2.data });
            this.setState({ authorid: result2.data[0].id })
            // console.log("podcast", this.state.podcasts);
            // console.log("author", this.state.author);
        })
            .catch(error => console.log(error))
    }


    savePodcast() {
        console.log('savingg')
        axios.post('/listenagain', {
            id: this.state.podcastID
        })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
    }

    saveAuthor() {
        console.log('saving author')
        axios.post('/subscribe', {
            id: this.state.authorid
        })
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });
    }


    render() {
        if (this.state.podcasts === null || this.state.author === null) {
            return false
        } else {
            const podcastAuthor = this.state.author.map((author, index) => {
                return (<div>
                    <Box>
                        <p>By: {author.name}</p>
                        <img src={author.photo_url} />
                        <p>Bio: {author.description}</p>

                    </Box>
                </div>);
            });
            return (
                <div>
                    <Box>
                        <h1>Hi from podcast.jsx</h1>
                        {podcastAuthor}
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
                        <Button onClick={() => { this.saveAuthor() }}
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