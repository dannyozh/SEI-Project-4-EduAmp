import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import MediaCard from "../card/card"
import Grid from '@material-ui/core/Grid';





const csrfToken = document.querySelector('[name=csrf-token]').content
axios.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken


class Podcastindex extends React.Component {
    constructor() {
        super();
        console.log("in constructorssss");
        this.state = {
            podcasts: null,
            podcastID: window.location.pathname.split('/')[2],
            category: "",
            duration: "",
            age_group: ""
        }
    }

    // componentDidMount() {
    //     console.log("in second comp mount")
    //     axios.get('/alldurations')
    //         .then(res => {
    //             const data = res.data;
    //             console.log("res.date", res.data);
    //             this.setState({ durations: data });
    //         })
    //         .catch(error => console.log(error))
    //     console.log("durations collected are", this.state.durations)
    // }


    componentDidMount() {
        console.log("in mounting")
        let url = "/allpodcasts";
        axios.get(url)
            .then(res => {
                const data = res.data;
                // console.log("res.date", res.data);
                // console.log("result1is", result1.data);
                // console.log("result2is", result2.data);
                this.setState({ podcasts: data });
            })
            .catch(error => console.log(error))
    }

    inputChangeHandlerCategory(event) {
        console.log("in pinput sdadas", event.target.value)
        this.setState({ category: event.target.value })
    }

    inputChangeHandlerDuration(event) {
        console.log("in pinput sdadas", event.target.value)
        this.setState({ duration: event.target.value })
    }

    inputChangeHandlerAgeGroup(event) {
        console.log("in pinput sdadas", event.target.value)
        this.setState({ age_group: event.target.value })
    }


    render() {
        const classes = {
            maxWidth: 345,
            height: 140
        }
        const searchedPodcast = this.state.podcasts ? this.state.podcasts.filter(podcast => podcast.category.toLowerCase().includes(this.state.category.toLowerCase()) && podcast.duration.toLowerCase().includes(this.state.duration.toLowerCase()) && podcast.age_group.toLowerCase().includes(this.state.age_group.toLowerCase())).map(podcast => <div>
            <MediaCard
                title={podcast.podcast_title}
                description={podcast.description}
                photo={podcast.podcast_photo}
                url={'/podcasts/' + podcast.id}
            />

            <br />
        </div>) : "";

        if (this.state.podcasts === null) {
            return false
        } else {
            return (
                < div >
                    <Container>
                        <h1>Hi from podcast INDEX.jsx</h1>
                        <input id="search" type="text" placeholder="category e.g. History" onChange={(event) => { this.inputChangeHandlerCategory(event) }} />
                        <input id="search" type="text" placeholder="duration e.g. Short" onChange={(event) => { this.inputChangeHandlerDuration(event) }} />
                        <input id="search" type="text" placeholder="age e.g. Kids" onChange={(event) => { this.inputChangeHandlerAgeGroup(event) }} />
                        <hr />
                        <Grid container item xs={12} spacing={3}>
                            {searchedPodcast}
                        </Grid>
                    </Container>
                </div >
            );
        }
    }
}

export default Podcastindex;