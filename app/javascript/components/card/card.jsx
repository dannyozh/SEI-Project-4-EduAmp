import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Card from '@material-ui/core/Card';
import CardActionArea from '@material-ui/core/CardActionArea';
import CardActions from '@material-ui/core/CardActions';
import CardContent from '@material-ui/core/CardContent';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Typography from '@material-ui/core/Typography';


const useStyles = makeStyles({
    card: {
        maxWidth: 345,
        backgroundColor: '#6B93C2',
        color: '#4E342E',


    },
    media: {
        height: 300,
    },
});

export default function MediaCard(props) {
    const classes = useStyles();

    let description = props.description.substring(0, 100);
    let trimmedDescription = description.substring(0, Math.min(description.length, description.lastIndexOf(" ")))
    return (
        <Card className={classes.card} >
            <CardActionArea>
                <CardMedia
                    className={classes.media}
                    image={props.photo}
                    title="Contemplative Reptile"
                />
                <CardContent>
                    <Typography gutterBottom variant="h5" component="h2">
                        {props.title}
                    </Typography>
                    <Typography variant="body2" color="textSecondary" component="p">
                        {trimmedDescription} ...
                    </Typography>
                </CardContent>
            </CardActionArea>
            <CardActions>

                <Button size="large" color="secondary" href={props.url}>
                    Learn More
        </Button>
            </CardActions>
        </Card>
    );
}