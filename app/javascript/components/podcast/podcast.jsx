import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Button from '@material-ui/core/Button';
import { makeStyles } from '@material-ui/core/styles';
import Icon from '@material-ui/core/Icon';
import SaveIcon from '@material-ui/icons/Save';
import Box from '@material-ui/core/Box';
import ReactDOMServer from 'react-dom/server';
import ImageAvatars from '../avatar/avatar';
import Container from '@material-ui/core/Container';
import Grid from '@material-ui/core/Grid';
// import MediaControlCard from "../mediacard/mediacard";
import PaperSheet from "../paper/paper"
import './style.scss';


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
                return (<div className="col-md-10">
                    <ImageAvatars photo={author.photo_url} />
                    <h2>By: {author.name}</h2>
                    <h6>Bio: {author.description}</h6>

                </div>);
            });
            return (
                <div className="mt-5 pt-4">
                    <Container>
                        <Grid container justify="space-around">
                            <Grid item xs={6}>
                                {podcastAuthor}
                            </Grid>
                            <Grid item xs={6}>
                                <div style={{ display: "block", width: "100%" }}>
                                    <div className="float-left col-md-4">
                                        <img className="img-fluid rounded" src={this.state.podcasts.podcast_photo} />
                                    </div>
                                    <div className="float-left col-md-8">
                                        <div className="row">
                                            <div className="col-12">
                                                <h2 className="col-md-11 d-block" >Title: {this.state.podcasts.podcast_title}</h2>
                                                <h3 className="col-md-11 d-block" >Date: {this.state.podcasts.date}</h3>

                                            </div>
                                        </div>
                                        <div className="row">
                                            <div className="col-12">
                                                <audio className="ml-3" controls preload="auto" ref="audio">
                                                    <source className="main-audio" src={this.state.podcasts.url} type="audio/mpeg">
                                                    </source>;
                                            </audio>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div className="float-left py-3 mx-2 col-md-10">
                                    <h4 >Episode Name: {this.state.podcasts.episode_name}</h4>
                                    <h6 >Description: {this.state.podcasts.description}</h6>
                                    <br />
                                    <br />
                                    <Button style={{ marginRight: "15px" }} onClick={() => { this.saveAuthor() }}
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
                                </div>
                            </Grid>
                        </Grid>
                        <hr />


                    </Container>
                </div >
            );
        }

    }


}

export default Podcast;