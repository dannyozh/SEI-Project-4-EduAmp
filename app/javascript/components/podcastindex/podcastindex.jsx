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
        const classes = {
            maxWidth: 345,
            height: 140
        }

        if (this.state.podcasts === null) {
            return false
        } else {
            const allPodcasts = this.state.podcasts.map((podcast, index) => {
                return (<div>
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
                </div>);
            });
            return (
                <div>
                    <Container>
                        <h1>Hi from podcast INDEX.jsx</h1>
                        {allPodcasts}
                    </Container>
                </div >
            );
        }
    }
}

export default Podcastindex;