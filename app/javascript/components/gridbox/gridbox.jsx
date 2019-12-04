import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Paper from '@material-ui/core/Paper';
import Grid from '@material-ui/core/Grid';
import Typography from '@material-ui/core/Typography';
import { createMuiTheme } from '@material-ui/core/styles';
import CardMedia from '@material-ui/core/CardMedia';
import Button from '@material-ui/core/Button';
import Image from '../../../assets/images/listening.jpg';
import { palette } from '@material-ui/system';
import { sizing } from '@material-ui/system';

const useStyles = makeStyles(theme => ({
    root: {
        flexGrow: 1,
    },
    paper: {
        padding: theme.spacing(2),
        textAlign: 'left',
        color: 'white',
        fontSize: 50,
        backgroundColor: '#7986cb',
    },
}));

const fontTheme = createMuiTheme({
    brandmessage: {
        // In Chinese and Japanese the characters are usually larger,
        // so a smaller fontsize may be appropriate.
        fontSize: 45,
    },
    brandsynopsis: {
        fontSize: 35,
    }
});



export default function CenteredGrid(props) {
    const classes = useStyles();

    return (
        <div className={classes.root}>
            <Grid container spacing={3} justify="center" alignItems="center" style={{ minHeight: "100vh" }}>
                <Grid item xs={6}>
                    <CardMedia
                        style={{ height: 0, paddingTop: '56.25%' }}
                        image="https://cdn.dribbble.com/users/1111113/screenshots/5738989/______2.jpg"
                        title="lorem ipsum"
                    />

                </Grid>
                <Grid item xs={6} >
                    <Paper className={classes.paper} bgcolor="primary.main"  >
                        <Typography style={fontTheme.brandmessage} variant="h5" component="h3">
                            {props.brandmessage}
                        </Typography>
                        <br />
                        <Typography style={fontTheme.brandsynopsis} variant="h6" component="h4">
                            {props.synopsis}
                        </Typography>
                    </Paper>
                </Grid>
            </Grid>
        </div >
    );
}