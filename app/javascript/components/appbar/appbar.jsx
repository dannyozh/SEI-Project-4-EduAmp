import React from 'react';
import { makeStyles } from '@material-ui/core/styles';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Button from '@material-ui/core/Button';
import IconButton from '@material-ui/core/IconButton';
import MenuIcon from '@material-ui/icons/Menu';
import Link from '@material-ui/core/Link';

const useStyles = makeStyles(theme => ({
    root: {
        flexGrow: 1,
    },
    menuButton: {
        marginRight: theme.spacing(2),
    },
    title: {
        flexGrow: 1,
    },
    bar: {
        boxShadow: '0 3px 5px 2px rgba(255, 105, 135, .3)',
        color: 'white',
    },
    button: {
        color: 'white',
    }
}));



export default function ButtonAppBar(props) {
    const classes = useStyles();

    return (
        <div className={classes.root}>
            <AppBar style={{ background: '#2E3B55' }} position="static">
                <Toolbar className={classes.bar}>
                    <Typography variant="h6" className={classes.title}>
                        <Button size="large" className={classes.button} href="/">
                            {props.title}
                        </Button>
                    </Typography>
                    <Button href="/podcasts" color="white">See Podcasts!</Button>
                    <Button href="/students/sign_in" color="white">Login</Button>
                    <Button href="/students/sign_up" color="white">Register</Button>
                </Toolbar>
            </AppBar>
        </div>
    );
}