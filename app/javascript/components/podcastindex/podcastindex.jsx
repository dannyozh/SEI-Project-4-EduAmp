import React from 'react';
import axios from 'axios';
import ReactDOM from 'react-dom';
import Container from '@material-ui/core/Container';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import FormLabel from '@material-ui/core/FormLabel';
import FormControl from '@material-ui/core/FormControl';
import FormGroup from '@material-ui/core/FormGroup';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import FormHelperText from '@material-ui/core/FormHelperText';
import Checkbox from '@material-ui/core/Checkbox';




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
            <Card
                className="main-card"
            >
                <CardActionArea>
                    <CardMedia
                        component="img"
                        alt="podcast image"
                        image={podcast.podcast_photo}
                        title="podcast image"
                        height="140"
                    />
                    <CardContent>
                        <Typography gutterBottom variant="h5" component="h2">
                            {podcast.podcast_title}
                        </Typography>
                        <Typography variant="subtitle1" color="textPrimary" component="p">
                            Episode {podcast.episode_no}: {podcast.episode_name}
                        </Typography>
                        <Typography variant="body1" color="textSecondary" component="p">
                            Excerpt: {podcast.description}
                        </Typography>
                    </CardContent>
                </CardActionArea>
                <CardActions>
                    <Button href={'/podcasts/' + podcast.id} size="small" color="primary">
                        Learn More
                    </Button>
                </CardActions>
            </Card>
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
                        {searchedPodcast}
                    </Container>
                </div >
            );
        }
    }
}

export default Podcastindex;