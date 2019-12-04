import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Paper from '@material-ui/core/Paper';
import Typography from '@material-ui/core/Typography';
import CardMedia from '@material-ui/core/CardMedia';
import Box from '@material-ui/core/Box';

const useStyles = makeStyles(theme => ({
    root: {
        padding: theme.spacing(3, 2),
    },
}));

export default function PaperSheet(props) {
    const classes = useStyles();

    return (
        <Paper className={classes.root}>
            <Box flexDirection="row">
                <img src={props.image} />
                <Typography variant="h5" component="h3">
                    {props.title}
                </Typography>
                <Typography component="p">
                    {props.episode_description}
                </Typography>
            </Box>
            <br />
            <audio controls preload="auto" >
                <source className="main-audio" src="" type="audio/mpeg">
                </source>;
            </audio>
        </Paper>
    );
}