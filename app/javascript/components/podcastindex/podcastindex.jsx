import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import MediaCard from "../card/card"
import Grid from '@material-ui/core/Grid';
import Paper from '@material-ui/core/Paper';
import TextField from '@material-ui/core/TextField';






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
            <Grid item xs={11} >
                <MediaCard
                    title={podcast.podcast_title}
                    description={podcast.description}
                    photo={podcast.podcast_photo}
                    url={'/podcasts/' + podcast.id}
                />
            </Grid>
            <br />
        </div>) : "";

        // Array.prototype.eachSlice = function (size) {
        //     this.arr = []
        //     for (var i = 0, l = this.length; i < l; i += size) {
        //         this.arr.push(this.slice(i, i + size))
        //     }
        //     return this.arr
        // };

        // console.log("WWWWW", searchedPodcast.eachSlice(2))

        if (this.state.podcasts === null) {
            return false
        } else {
            return (
                < div >
                    <Container>
                        <div className="text-white">
                            <TextField
                                color="secondary"
                                label="Category"
                                margin="normal"
                                variant="filled" onChange={(event) => { this.inputChangeHandlerCategory(event) }} />
                            <TextField label="Duration"
                                margin="normal"
                                variant="outlined" onChange={(event) => { this.inputChangeHandlerDuration(event) }} />
                            <TextField label="Age Group"
                                margin="normal"
                                variant="outlined" onChange={(event) => { this.inputChangeHandlerAgeGroup(event) }} />
                            <hr />
                        </div>
                        <Grid container
                            direction="row"
                            justify="center"
                            alignContent="space-between"

                        >
                            {searchedPodcast}
                        </Grid>
                    </Container>
                </div >
            );
        }
    }
}

export default Podcastindex;